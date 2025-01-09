---
title: Generators
parent: Core Concepts
nav_order: 1
has_children: false
has_toc: true
---

# Generators

Generators are responsible for producing specific types of output based on input data. They focus on a single task and leverage AI models to perform their operations. This section explores the concept of Generators in the Sublayer framework, providing examples and guidance on extending their capabilities.

## How Generators Work

Generators receive inputs, process them using AI models, and return structured outputs. They form the basis of the content production process in Sublayer.

### Try making your own Generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

## Examples of Generators

Explore these examples to understand how Generators can be used to interact with AI models:

- **CodeFromDescriptionGenerator:** Generates code based on a textual description and specified technologies.
- **DescriptionFromCodeGenerator:** Converts code into a descriptive format, explaining its purpose and functionality.
- **CodeFromBlueprintGenerator:** Uses a predefined blueprint to generate code fitting a specific set of requirements.

## Extending Generators

You can customize Generators to handle different AI models and extend their functionalities:

- **Integrate with Various Models:** Adapt Generators to work with models like GPT-4 or Claude by setting up respective configurations.
- **Custom Outputs:** Design Generators to produce outputs tailored to your application's needs by defining your own output adapters.