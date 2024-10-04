---
title: Generators
parent: Core Concepts
nav_order: 1
---
# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

### Usage of GPT-4o and Gemini API:
With the introduction of the gpt-4o model in version 0.2, generators have gained enhanced efficiencies and capabilities for handling more complex tasks. Moreover, the experimental integration of the Gemini API enables more advanced interactions that weren't possible before. This includes function calling, now available in beta, which can be a game-changer for creating dynamic AI-driven processes.

Leveraging these models requires minimal changes in the setup, primarily revolving around model selection and configuration. For instance:

```ruby
# Example setup for GPT-4o
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

```ruby
# Example setup for Gemini API
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

These configurations dictate how the Generator fetches and processes outputs. Using Gemini especially allows for the use of its unique experimental features that optimize and refine the generation process.

### Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

### [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code_from_description_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description_from_code_generator.rb): Generates a description of the code passed into it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code_from_blueprint_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.