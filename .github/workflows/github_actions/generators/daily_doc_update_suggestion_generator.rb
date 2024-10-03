class DailyDocUpdateSuggestionGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :list_of_named_strings,
    name: "doc_update_suggestions",
    description: "List of doc update suggestions with usefulness scores",
    item_name: "suggestion",
    attributes: [
      { name: "suggestion", description: "doc update suggestion" },
      { name: "file_names", description: "comma separated list of file paths that should be updated according to the suggestion" },
      { name: "usefulness_score", description: "A score from 1-10 indicating the usefulness of the suggestion" },
      { name: "title", description: "doc update suggestion title" }
    ]

  def initialize(code_context:, doc_context:)
    @code_context = code_context
    @doc_context = doc_context
  end

  def generate
    super
  end

  def prompt
    <<~PROMPT
      As an expert in documentation with a focus on concise and hierarchical organization, you are tasked with generating suggestions for updating a documentation repository based on the present state of the code repository. Consider the following:

      1. Existing documentation context:
      #{@doc_context}

      2. Code repository context:
      #{@code_context}

      Generate a few critical documentation update suggestions, considering:
      1. Any missing information between the code repository and the existing documentation
      2. Any incorrect information between the code repository and the existing documentation
      3. The need for examples or clarifications of functionality

      For each suggestion
      - Describe the suggestion and the reasoning for its need
      - Indicate its usefulness, 10 being most useful and 1 being least, as a way of prioritizing which suggestion should be done first
      - Give the suggestion a succinct title that encapsulates the spirit of the suggestion
    PROMPT
  end
end