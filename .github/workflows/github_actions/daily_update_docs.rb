require "base64"

require 'sublayer'
require 'octokit'

Dir[File.join(__dir__, "actions", "*.rb")].each { |file| require file }
Dir[File.join(__dir__, "generators", "*.rb")].each { |file| require file }
Dir[File.join(__dir__, "agents", "*.rb")].each { |file| require file }

Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o-2024-08-06"

code_repo_path = "#{ENV['GITHUB_WORKSPACE']}/sublayer"
doc_repo_path = "#{ENV['GITHUB_WORKSPACE']}/sublayer_documentation"

puts "Getting Context"
code_context = GetContextAction.new(path: code_repo_path).call
doc_context = GetContextAction.new(path: doc_repo_path).call

puts "code context is #{code_context.size} long"
puts "doc context is #{doc_context.size} long"

context_ignore_list = File.read("#{doc_repo_path}/.contextignore").split("\n")
                                                                  .map(&:strip)
                                                                  .reject { |line| line.empty? || line.start_with?("#") }
                                                                  .join(", ")
puts "generating suggestions"
doc_update_suggestions = DailyDocUpdateSuggestionGenerator.new(
  code_context: code_context,
  doc_context: doc_context,
  context_ignore_list: context_ignore_list
).generate

puts "here are all suggestions:"
puts doc_update_suggestions.map(&:suggestion).join(", ")

suggestion = doc_update_suggestions.sort_by { |suggestion| suggestion.usefulness_score.to_i }.last
best_suggestion = suggestion.suggestion
file_changes = suggestion.file_changes
best_suggestion_title = suggestion.title

puts "here is the best suggestion: #{best_suggestion}"

# Generate the list of file updates
file_updates = DailyDocUpdateGenerator.new(
  code_context: code_context,
  doc_update_suggestion: "#{best_suggestion}\n  description of file changes: #{file_changes}",
  doc_context: doc_context,
  context_ignore_list: context_ignore_list
).generate

# Now write the file updates to disk
file_updates.each do |file_update|
  file_path = file_update["file_path"]
  file_content = file_update["file_content"]

  puts "Updating file: #{file_path}"

  WriteFileAction.new(file_path: "#{doc_repo_path}/#{file_path}", file_contents: file_content).call
end

puts "All files updated."

stamp = Time.now.strftime('%Y-%m-%d-%H-%M')
branch_name = "daily-doc-updates-#{stamp}"
CreateBranchAction.new(repo_path: doc_repo_path, branch_name: branch_name).call
PushChangesAction.new(repo_path: doc_repo_path, commit_message: "Daily update to docs", branch_name: branch_name).call

DailyCreatePullRequestAction.new(branch_name: branch_name, suggestion: "#{best_suggestion}\n  description of file changes: #{file_changes}", title: best_suggestion_title).call