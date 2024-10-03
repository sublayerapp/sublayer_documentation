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

## Choose your AI Model

Sublayer is model-agnostic and can be used with any AI model. Below are the supported LLM Providers.

### OpenAI (Default)

Ensure you have an OpenAI API key set in the `OPENAI_API_KEY` environment variable. Visit [OpenAI](https://openai.com/product) to get an API key.

Usage:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

### Gemini

Note: Gemini's function calling API is in beta. Not recommended for production use.

Ensure you have a Gemini API key set in the `GEMINI_API_KEY` environment variable. Visit [Google AI Studio](https://ai.google.dev/) to get an API key.

Usage:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-pro"
```

### Claude

Ensure you have a Claude API key set in the `ANTHROPIC_API_KEY` environment variable. Visit [Anthropic](https://anthropic.com/) to get an API key.

Usage:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
```
