---
title: Generators
parent: Core Concepts
nav_order: 1
---

# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

### Using AI Providers with Generators

Sublayer supports multiple AI providers, allowing you to select the best one for your needs. Here's how you can configure them:

#### OpenAI

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

#### Gemini

Note: Gemini is currently in beta and may not be suitable for production use.

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-pro"
```

#### Claude

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
```

### Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

### [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_description\_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description_from_code_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code_from_blueprint_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide](../troubleshooting.md) for common error scenarios and solutions.