---
title: Advanced Config
nav_order: 6
---
# Advanced Config

After installing Sublayer, you can configure any of the available LLM providers according to your needs.

## OpenAI (Default)

Set your `OPENAI_API_KEY` environment variable. (Visit [OpenAI](https://openai.com/product) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

Add the configuration to your settings file, ensuring the provider and model are correctly set up for your requirements.

## Anthropic (Claude)

Supported Models: Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

Ensure that your application settings files reflect these settings for consistent configuration across environments.

## Google (Gemini) [UNSTABLE]

**Note:** The Gemini provider is currently in a beta phase and considered unstable. It is not recommended for production environments.

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

Review the setup process carefully due to the beta nature of Gemini's API. Check frequently for updates regarding stability improvements.
