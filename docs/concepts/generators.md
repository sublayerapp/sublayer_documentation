---
title: Generators
parent: Core Concepts
nav_order: 1
---
# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

## Creating Custom Generators

Creating custom generators allows you to tailor the generation processes to your specific needs. This involves defining a class that inherits from `Sublayer::Generators::Base` and specifying the logic and prompt that will be used for generation.

### Basic Example

Here's a simple example of a generator that produces text based on a given template:

```ruby
generator = SimpleGenerator.new(template: 'Hello, {name}!')
puts generator.generate(name: 'World')
```

### Advanced Use Cases

You can extend generators to handle complex scenarios like conditional logic, external data fetching, and more. For advanced use cases, you might integrate APIs or handle asynchronous tasks to refine the input data dynamically before generation.

#### Example of Advanced Generator

An advanced generator could take into account the time of day, user preferences, and historical data to output personalized greetings:

```ruby
class AdvancedGenerator < Sublayer::Generators::Base
  def initialize(user_context)
    @user_context = user_context
  end

  def generate
    if Morning?
      format('Good morning, %<user>s!', user: @user_context[:name])
    else
      format('Hello, %<user>s!', user: @user_context[:name])
    end
  end

  private

  def morning?
    Time.now.hour < 12
  end
end
```

Learn more about creating custom output adapters and integrating them with external systems in our [Custom Components](/docs/custom_components/index.md) section.

### Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

### [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_description\_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description\_from\_code\_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_blueprint\_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide]({% link docs/troubleshooting.md %}) for common error scenarios and solutions.