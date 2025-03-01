---
title: Generators Detailed
parent: Core Concepts
nav_order: 4
---
# Generators Detailed

Generators in the Sublayer framework are responsible for generating outputs based on input data. They are designed to handle specific tasks efficiently and do not perform actions or complex decision-making. Generators serve as essential building blocks within the framework.

## Class Descriptions

### CodeFromDescriptionGenerator
Generates code based on a description and specified technologies.
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
      You are an expert programmer in \\#{@technologies.join(", ")}.

      You are tasked with writing code using the following technologies: \\#{@technologies.join(", ")}.

      The description of the task is \\#{@description}

      Take a deep breath and think step by step before you start coding.
    PROMPT
  end
end
```

## Usage Examples

- **Example 1**: Convert user stories to technical specifications using a Generator.
- **Example 2**: Automatically generate API client code in multiple languages.

## Configuration Options

Generators can be customized with different output adapters and configurations to fit various tasks. Use the `llm_output_adapter` directive to specify the type and format of the generated content.

Refer to the [Quick Start Guide](/docs/quick_start.md) for an introduction to setting up your environment and creating your first generator.