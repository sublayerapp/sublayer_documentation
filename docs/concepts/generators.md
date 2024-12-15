---
title: Generators
parent: Core Concepts
nav_order: 1
---
# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

### Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

## Example: Creating a Generator in Ruby

Let's walk through an example of creating a simple generator step-by-step.

### Step 1: Define the Generator Class

Create a class for your generator that inherits from `Sublayer::Generators::Base` and define any necessary initializer parameters.

```ruby
class ExampleGenerator < Sublayer::Generators::Base

  def initialize(input_data)
    @input_data = input_data
  end

end
```

### Step 2: Define the LLM Output Adapter

Specify the type of output your generator will produce by defining an output adapter using `llm_output_adapter`. For this example, we will generate a simple string.

```ruby
class ExampleGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string,
    name: "generated_content",
    description: "The generated content based on input data"

  def initialize(input_data)
    @input_data = input_data
  end
end
```

### Step 3: Implement the `prompt` Method

The `prompt` method is where you provide instructions to the large language model, guiding it on the task it should perform.

```ruby
class ExampleGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string,
    name: "generated_content",
    description: "The generated content based on input data"

  def initialize(input_data)
    @input_data = input_data
  end

  def prompt
    """
    You are an intelligent assistant. Based on the input provided: \
    \
    \
    \
    
    Please generate content that is coherent and relevant.
    """
  end
end
```

### Step 4: Generate Using Your Generator

Use the `generate` method to produce the output.

```ruby
example_generator = ExampleGenerator.new("example input")
output = example_generator.generate
puts output
```

This example helps in understanding how to create a generator, define its expected output, instruct the LLM, and finally, execute the generation process. This hands-on guide illustrates the practical application of generators in the Sublayer framework.

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide]({% link docs/troubleshooting.md %}) for common error scenarios and solutions.

### [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_description\_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description\_from\_code\_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_blueprint\_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.

---

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide]({% link docs/troubleshooting.md %}) for common error scenarios and solutions.