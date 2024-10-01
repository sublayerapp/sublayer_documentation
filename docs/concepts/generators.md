---
title: Generators
parent: Core Concepts
nav_order: 1
---
# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

### Enhanced Generator Functionality

With the latest updates, the generator functionality in Sublayer has been enhanced to support more complex options and provide additional customization capabilities. These include:

- **Integration with More AI Models and Providers:** Generators can now interact more extensively with models such as Claude or Gemini, allowing for a broader range of applications and improved performance.
- **Customizable Interaction Capabilities:** The addition of features that enable users to specify and fine-tune the interaction with different AI models, enhancing the ability to tailor outputs to specific needs.

Generators can now be used with new CLI and Github Action project templates, providing more versatility in project development.

### Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

### [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code_from_description_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description_from_code_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code_from_blueprint_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.
