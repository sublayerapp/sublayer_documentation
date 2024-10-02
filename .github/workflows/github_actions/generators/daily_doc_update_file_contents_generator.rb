class DailyDocUpdateFileContentsGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string,
    name: "file_content",
    description: "the new contents of the file"

  def initialize(doc_update_suggestion:, doc_context:, file_to_change:, code_context:, changes_so_far:)
    @doc_update_suggestion = doc_update_suggestion
    @doc_context = doc_context
    @file_to_change = file_to_change
    @code_context = code_context
    @changes_so_far = changes_so_far
  end

  def generate
    super
  end

  def prompt
    <<~PROMPT
      As an expert in technical documentation, you are tasked with updating the contents of a specific file in the documentation repository.
      Use the following information to guide your update:

      1. File to update: #{@file_to_change}
      2. Documentation update suggestion: #{@doc_update_suggestion}
      3. Existing documentation context: #{@doc_context}
      4. Current Code context: #{@code_context}
      5. Pending changes made to other documentation so far: #{@changes_so_far}
      6. The documentation is written through github pages.

      Update the file contents according to these guidelines:
      1. Maintain the existing structure and style of the document, keep patterns that are present throughout the docs.
      2. Focus on the update suggestion
      3. Prefer minimal changes that effectively communicate the updates
      4. Use clear, concise language appropriate for technical documentation
      5. Avoid temporal references (e.g., "now", "recent", "new", "just updated", "latest")
      6. Ensure all links and references remain valid

      Provide the entire updated file content, including unchanged parts.
    PROMPT
  end
end
