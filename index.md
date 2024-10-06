---
title: Home
layout: home
nav_order: 1
description: "Sublayer is a model-agnostic AI agent framework in Ruby"
---

# Welcome

### A model-agnostic AI Agent framework for Ruby

Combine Generators, Actions, and Agents to build AI-powered applications!

* [Get Started](docs/quick_start.md)
* [View on Github](https://github.com/sublayerapp/sublayer)

### Quick Links

Sublayer is self-assembling, model-agnostic, AI Agent framework in Ruby that allows you to effortlessly create generative AI-powered automations.

* [Quick Start](docs/quick_start.md): Get started with Sublayer right away.
* [Examples](docs/guides/index.md): Browse example code showing how you can use the Sublayer gem.
* [Framework Guide](docs/concepts/index.md): Learn about Sublayer concepts and conventions.
* [Advanced Config](docs/advanced_config.md): Step-by-step guides to setting up your system and installing the library.

### Configuring AI Providers

Sublayer supports multiple AI providers, allowing flexibility in choosing the right model for your project needs. The currently supported AI providers are **OpenAI**, **Claude (Anthropic)**, and **Gemini (Google)**. Below is a quick configuration guide for each provider:

#### OpenAI (Default)

For OpenAI, ensure your API key is set in the `OPENAI_API_KEY` environment variable.

Example Configuration:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

#### Claude (Anthropic)

Claude requires the `ANTHROPIC_API_KEY` to be set in your environment variables.

Example Configuration:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
```

#### Gemini (Google)

Note: Gemini's API is in beta. The key should be set in `GEMINI_API_KEY`.

Example Configuration:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-pro"
```

For detailed configuration and customization, including setting up custom providers, refer to our [documentation](https://docs.sublayer.com).
