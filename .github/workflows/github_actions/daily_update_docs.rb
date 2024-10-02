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

puts "generating suggestions"
doc_update_suggestions = DailyDocUpdateSuggestionGenerator.new(
  code_context: code_context,
  doc_context: doc_context
).generate
suggestion = doc_update_suggestions.sort_by { |suggestion| suggestion.usefulness_score.to_i }.last
best_suggestion = suggestion.suggestion
best_suggestion_title = suggestion.title

puts "here is the suggestion: #{best_suggestion}"

puts "generating list of files/changes for suggestions"
file_names = DailyDocUpdateFileNamesGenerator.new(
  doc_update_suggestion: best_suggestion,
  code_context: code_context,
  doc_context: doc_context
).generate

file_names = FilterFilesAction.new(
  repo_path: doc_repo_path,
  file_names: file_names
).call

puts "here are the files to change: #{file_names}"

changes_so_far = []
files_and_contents = file_names.map do |file_name|
  file_content = DailyDocUpdateFileContentsGenerator.new(
    code_context: code_context,
    doc_update_suggestion: best_suggestion,
    doc_context: doc_context,
    file_to_change: file_name,
    changes_so_far: changes_so_far
  ).generate

  changes_so_far << [file_name, file_content]

  puts "#{ file_names.index(file_name) + 1 } / #{ file_names.length} complete"
  [file_name, file_content]
end

puts "making changes locally"
files_and_contents.each do |file_path, file_contents|
  WriteFileAction.new(file_path: "#{doc_repo_path}/#{file_path}", file_contents: file_contents).call
end

stamp = Time.now.strftime('%Y-%m-%d-%H-%M')
branch_name = "daily-doc-updates-#{stamp}"
CreateBranchAction.new(repo_path: doc_repo_path, branch_name: branch_name).call
PushChangesAction.new(repo_path: doc_repo_path, commit_message: "Daily update to docs", branch_name: branch_name).call

DailyCreatePullRequestAction.new(branch_name: branch_name, suggestion: best_suggestion, title: best_suggestion_title).call