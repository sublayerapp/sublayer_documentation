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

### Usage Examples
To better understand how Generators work in practice, let's look at a simple example of using the CodeFromDescriptionGenerator.

#### CodeFromDescriptionGenerator Example
The `CodeFromDescriptionGenerator` can be used to transform a given description into a snippet of code using specified technologies.

**Example Ruby code to use the `CodeFromDescriptionGenerator`:**

```ruby
# Usage of CodeFromDescriptionGenerator
description = "A Ruby script that says hello to a user"
technologies = ["Ruby"]
generator = CodeFromDescriptionGenerator.new(description: description, technologies: technologies)

puts generator.generate
```

This example utilizes the generator to produce a simple 'Hello, user!' script in Ruby.

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide](../troubleshooting.md) for common error scenarios and solutions.
