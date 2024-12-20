---
title: Generators
parent: Core Concepts
nav_order: 1
---
# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

### Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

### [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code_from_description_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description_from_code_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code_from_blueprint_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.

### Updated Model Example

Sublayer now supports seamless integration with the `gpt-4o` model, enhancing the capabilities of existing generators. Example:

```ruby
class CodeFromPromptGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string,
    name: "generated_code",
    description: "The generated code for the prompt"

  def initialize(prompt:)
    @prompt = prompt
  end

  def generate
    super
  end

  def prompt
    <<-PROMPT
        Use the latest gpt-4o model to generate realistic, efficient code.
        Prompt: \\#{@prompt}
    PROMPT
  end
end
```

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide]({% link docs/troubleshooting.md %}) for common error scenarios and solutions.