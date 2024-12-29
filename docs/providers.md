---
title: Providers
nav_order: 6
---

# Providers

This section provides detailed setup instructions for the different AI providers supported by Sublayer, including OpenAI, Claude, and Gemini. Each provider has unique requirements for API keys and model configuration. Follow the examples below to set up each provider.

## OpenAI (Default)

OpenAI provides a suite of APIs for various functionalities. To use OpenAI services with Sublayer, set the `OPENAI_API_KEY` environment variable after obtaining it from [OpenAI](https://openai.com/product).

Example configuration:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

## Claude

Claude is an AI platform offering several models. Set your `ANTHROPIC_API_KEY` environment variable to interact with Claude. Available at [Anthropic](https://anthropic.com/).

Example configuration:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

## Gemini

Gemini's APIs are currently in beta and experimental. Obtain your `GEMINI_API_KEY` from [Google AI Studio](https://ai.google.dev/). Note that the API is considered unstable.

Example configuration:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```
