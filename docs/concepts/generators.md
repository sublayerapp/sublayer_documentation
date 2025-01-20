---
title: Generators
parent: Core Concepts
nav_order: 1
---

# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

## Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

## Examples

* **CodeFromDescriptionGenerator**: Generates code based on a description and the technologies used.
  
  ```ruby
  class CodeFromDescriptionGenerator < Sublayer::Generators::Base
    llm_output_adapter type: :single_string,
      name: "generated_code",
      description: "The generated code in the requested language"

    def initialize(description:, technologies:)
      @description = description
      @technologies = technologies
    end

    def generate
      super
    end

    def prompt
      <<-PROMPT
        You are an expert programmer in \
          \\#{@technologies.join(", ")}.

        You are tasked with writing code using the following technologies: \
          \\#{@technologies.join(", ")}.

        The description of the task is \
          \\#{@description}

        Take a deep breath and think step by step before you start coding.
      PROMPT
    end
  end
  ```

* **DescriptionFromCodeGenerator**: Generates a description of the code passed in to it.
  
  ```ruby
  class DescriptionFromCodeGenerator < Sublayer::Generators::Base
    llm_output_adapter type: :single_string,
      name: "code_description",
      description: "A description of what the code does, its purpose,functionalities, and any noteworthy details"

    def initialize(code:)
      @code = code
    end

    def generate
      super
    end

    def prompt
      <<-PROMPT
        You are an experienced software engineer. Below is a chunk of code:

        \
          \\#{@code}

        Please read the code carefully and provide a high-level description of \
          what this code does, including its purpose, functionalities, and any \
          noteworthy details.
      PROMPT
    end
  end
  ```

These examples provide a guide on how to implement Generators within the Sublayer framework and how they can be customized for different tasks.

## Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide]({% link docs/troubleshooting.md %}) for common error scenarios and solutions.
