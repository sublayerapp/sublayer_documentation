---
title: Generators
parent: Core Concepts
nav_order: 1
---

# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

## Setup Guide

To set up a Generator, perform the following steps:

1. **Define Input and Output**: Clearly outline what input your generator will take and what output it needs to produce.
2. **Implement the Generator Class**: Create a Ruby class that inherits from `Sublayer::Generators::Base`.
3. **Define the Adapter**: Use the `llm_output_adapter` to define the structure of the output. It can be a single string, list, named strings, etc.
4. **Create the Prompt**: This is the instruction to the LLM about what it needs to generate. Often, this includes input details and the context for generation.
5. **Integrate with Project**: Utilize the generator in your project by initializing it with required parameters and invoking the `generate` method.

## Real World Example

Let's create a simple generator that generates Ruby code snippets from a given description:

```ruby
require 'sublayer'

class CodeSnippetGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string,
    name: "generated_code",
    description: "Ruby code snippet generated from the description."

  def initialize(description:)
    @description = description
  end

  def generate
    super
  end

  def prompt
    <<-PROMPT
      You are an expert Ruby programmer. Generate a code snippet based on the following description:

      Description: \\#{@description}
    PROMPT
  end
end
```

### Usage

You can use the generator in your application as follows:

```ruby
# Instantiate with a description of your code task
generator = CodeSnippetGenerator.new(description: "A method that reverses a string")

# Generate code
puts generator.generate
```

### Common Use Cases

Generators are perfect for tasks like:
- Automating code generation (e.g., class files, APIs, etc.)
- Creating configuration files
- Generating documentation snippets

---

### Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

### [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_description\_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description\_from\_code\_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_blueprint\_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.