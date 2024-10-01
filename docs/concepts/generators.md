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

### Recent Enhancements in Generators

With the latest updates, the generator capabilities have been expanded to include support for new types of projects and command generators, enhancing flexibility and productivity. Here are some notable enhancements:

- **New Project Types:** Generators now support project templates like `CLI`, `GithubAction`, and `QuickScript`, allowing users to create different types of projects based on specific needs. To create a new project using these templates, you can refer to the `Quick Start` section for detailed instructions.
- **Enhanced Command Generators:** The framework introduces improved command generation capabilities, enabling streamlined creation of CLI commands that interact with various components of the project.

These improvements allow users to leverage the advanced functionalities of the Sublayer framework effectively, facilitating complex operations and integrations.
