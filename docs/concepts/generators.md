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
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/tree/main/examples/code_from_blueprint_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide]({% link docs/troubleshooting.md %}) for common error scenarios and solutions.

## Prompt Engineering for Generators

When working with generators, crafting effective prompts is crucial for achieving reliable and accurate outputs. Here are some best practices for prompt engineering:
* **Clear Instructions**: Clearly state what you expect from the model. Ambiguity often leads to inaccurate results.
* **Context Specificity**: Provide enough context so the model can generate relevant outputs.
* **Iterative Testing**: Test and iterate on your prompts to refine them. Observe how changes in phrasing affect output.
* **Prompt Refinement Based on Output Analysis**: Analyze the outputs to identify patterns or inaccuracies and adjust the prompts accordingly.

### Example of Effective Prompts
1. **Simple Query**: "Generate a Python script for sorting an array."
  - Original Prompt: "Sort array"
  - Improved Prompt: "Create a Python function that takes an array of integers and returns a sorted array."
2. **Contextual Task**: "Draft an email for job application"
  - Original Prompt: "Write job application"
  - Improved Prompt: "Write a professional email applying for the role of software engineer, including a brief personal introduction and relevant experience. 

An effectively structured prompt helps the generator to focus on the task and produce a more accurate and contextually rich output.