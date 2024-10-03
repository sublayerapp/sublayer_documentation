class DailyDocUpdateGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :list_of_named_strings,
    name: "files_and_contents",
    description: "A list of files to update along with their corresponding updated contents",
    item_name: "file_update",
    attributes: [
      { name: "file_path", description: "The path of the file to update" },
      { name: "file_content", description: "The updated content for the file" }
    ]

  def initialize(doc_update_suggestion:, doc_context:, code_context:, context_ignore_list:)
    @doc_update_suggestion = doc_update_suggestion
    @doc_context = doc_context
    @code_context = code_context
    @context_ignore_list = context_ignore_list
  end

  def generate
    super
  end

  def prompt
    <<~PROMPT
      You are tasked with two related documentation tasks:
      1) Identifying specific files in the documentation repository that need updates based on a suggestion, and
      2) Generating updated content for these files.

      Use the following information to guide both tasks:

      1. Documentation repository structure:
      #{@doc_context}

      2. Code repository structure:
      #{@code_context}

      3. Documentation update suggestion:
      #{@doc_update_suggestion}

      4. Files excluded from updates (do not modify these files):
      #{@context_ignore_list}

      Your tasks:
      1. Identify specific files in the documentation repository that need updates based on the suggestion.
      2. Generate the full updated content for each identified file.

      Guidelines:
      1. Do not make updates to any files that are in the .contextignore
    PROMPT
  end

  def context_ignore_list
    ignore_file = File.join(@repo_path, ".contextignore")
    return [] unless File.exist?(ignore_file)

    File.read(ignore_file).split("\n").map(&:strip).reject { |line| line.empty? || line.start_with?("#") }.join(", ")
  end
end