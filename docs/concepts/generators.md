---
title: Generators
parent: Core Concepts
nav_order: 1
---
# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

### Supported LLM Providers

Sublayer supports various Large Language Model (LLM) providers. Ensure to configure the correct provider:

- **OpenAI (Default)**
  - Model: `gpt-4o`
  - Requires: `OPENAI_API_KEY`
  - For more details, visit [OpenAI](https://openai.com/product)

- **Gemini [Unstable]**
  - Model: `gemini-1.5-pro`
  - Note: Function calling API is in beta and is unstable. Usage not recommended for production.
  - Requires: `GEMINI_API_KEY`
  - For more details, visit [Google AI Studio](https://ai.google.dev/)

- **Claude**
  - Model: `claude-3-5-sonnet-20240620`
  - Requires: `ANTHROPIC_API_KEY`
  - For more details, visit [Anthropic](https://anthropic.com/)

### Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

### [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_description\_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description\_from\_code\_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_blueprint\_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.
