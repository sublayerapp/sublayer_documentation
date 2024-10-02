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

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_description\_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description\_from\_code\_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_blueprint\_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.

## Custom Output Adapters Example

To further extend the functionality of generators, you can create custom Output Adapters. These adapters define the structure and format of the AI-generated output, acting as a bridge between the raw AI responses and the structured data your application expects.

### Creating a Custom Output Adapter

See the codebase example in `lib/sublayer/components/output_adapters` for reference. Here's a basic outline of creating a custom Output Adapter:

- **Define the Adapter Class:** Create a new class that implements necessary methods like `initialize` and `properties`.

- **Properties Method:** Define the properties your adapter will handle—these are typically formatted as an array of `OpenStruct` objects that describe the structure of the expected output.

- **Integration with Generators:** Use your custom adapter within a generator by specifying it in the `llm_output_adapter` method.

This setup allows you to customize how the data flows from the generator to its end use, providing flexibility and specificity in handling AI-generated data.

By leveraging custom Output Adapters, you can tailor the output of your Generators to fit the exact needs of your application, enhancing clarity and customization.