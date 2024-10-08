class DailyDocUpdateSuggestionGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :list_of_named_strings,
    name: "doc_update_suggestions",
    description: "List of doc update suggestions with usefulness scores",
    item_name: "suggestion",
    attributes: [
      { name: "suggestion", description: "description of the doc update suggestion and its reasoning" },
      { name: "file_changes", description: "description of the files and their respective changes" },
      { name: "usefulness_score", description: "A score from 1-10 indicating the usefulness of the suggestion" },
      { name: "title", description: "doc update suggestion title" }
    ]

  def initialize(code_context:, doc_context:, context_ignore_list:)
    @code_context = code_context
    @doc_context = doc_context
    @context_ignore_list = context_ignore_list
  end

  def generate
    super
  end

  def prompt
    <<~PROMPT
      As an expert in documentation with a focus on concise and hierarchical organization, you are tasked with generating detailed and specific suggestions for updating a documentation repository based on the present state of the code repository. Consider the following:

      1. Existing documentation context:
      #{@doc_context}

      2. Code repository context:
      #{@code_context}

      3. Files excluded from updates (do not modify these files):
      #{@context_ignore_list}

      Generate documentation update suggestions, considering:
      1. Any missing information between the code repository and the existing documentation
      2. Any incorrect information between the code repository and the existing documentation
      3. The need for examples or clarifications of functionality
      4. Additional documentation pages that could benefit users

      For each suggestion
      - Describe the suggestion and the detailed reasoning behind it. Be specific.
      - describe, meticulously, the files and the respective detailed changes that should be made in them.
      - Indicate its usefulness, 10 being most useful and 1 being least, as a way of prioritizing which suggestion should be done first
      - Give the suggestion a succinct title that encapsulates the spirit of the suggestion

      Guidelines:
      1. Do not suggest changes to any files excluded from updates
    PROMPT
  end
end