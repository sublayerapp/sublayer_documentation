class DailyDocUpdateFileNamesGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :list_of_strings,
    name: "file_paths",
    description: "A list of file paths that should be updated in the documentation"

  def initialize(doc_update_suggestion:, doc_context:, code_context:)
    @doc_update_suggestion = doc_update_suggestion
    @doc_context = doc_context
    @code_context = code_context
  end

  def generate
    super
  end

  def prompt
    <<~PROMPT
      As an expert in documentation organization, you are tasked with identifying specific files in the documentation repository that need updates based on a specific suggestion. Consider the following information:

      1. Documentation repository structure:
      #{@doc_context}

      2. Code repository structure:
      #{@code_context}

      3. Documentation update suggestion:
      #{@doc_update_suggestion}

      Provide a list of file paths from the documentation repository that should be updated, adhering to these guidelines:
      1. Maintain the existing documentation structure
      2. Prioritize updating higher-level documents for significant changes, and more specific documents for detailed changes
      3. Consider the appropriate scope for the suggestion
      4. Limit the list to only the most critical files that need updating
      5. Ensure that the selected files collectively address the suggested update.
    PROMPT
  end
end