---
title: Generators
parent: Core Concepts
nav_order: 1
---
# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

### Supported Output Adapter Types

To cater to diverse needs, multiple output adapter types are available:

- **Single String**: Outputs a single string.
- **List of Strings**: Outputs a list of strings.
- **Named Strings**: Outputs a set of named strings.
- **List of Named Strings**: Outputs a list of named string sets, allowing you to define multiple attributes for each set.
- **Single Integer**: Outputs a single integer.
- **String Selection from List**: Outputs a string selected from a provided list.

These adapters help in structuring the kind of output the LLM should produce by understanding the specific types of outputs required which assists in configuring the generation task appropriately.

### Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

### [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_description\_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description\_from\_code\_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_blueprint\_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.
