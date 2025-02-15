---
title: Generators
parent: Core Concepts
nav_order: 1
---

# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

### Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

## Code Example
Here’s a basic example to illustrate how you can create a generator:

```ruby
require "sublayer"

class SimpleGreetingGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string, name: "greeting_message", description: "A simple greeting message"

  def initialize(name)
    @name = name
  end

  def generate
    super
  end

  def prompt
    "Generate a friendly greeting message for \\#{@name}"
  end
end
```

In this example, a simple generator named `SimpleGreetingGenerator` is defined. It takes a name as an input and generates a greeting message using the defined prompt.

### [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_description\_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description\_from\_code\_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_blueprint\_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide]({% link docs/troubleshooting.md %}) for common error scenarios and solutions.
