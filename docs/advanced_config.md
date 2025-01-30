---
title: Advanced Config
nav_order: 6
---
# Advanced Config

After installing Sublayer, you can choose between any of the available LLM providers we support.

## OpenAI (Default)

Set your `OPENAI_API_KEY` environment variable. (Visit [OpenAI](https://openai.com/product) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

## Anthropic

Supported Models: Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

## Google

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

### New LL Models: Claude & Gemini

We have introduced new support for Claude and Gemini models that require additional configurations:

#### Claude
- **Requirements:** Ensure your environment has the correct `ANTHROPIC_API_KEY`.
- **Recommended Models:** Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet.
- **Configuration:** 
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
  Sublayer.configuration.ai_model = "claude-3-opus-20240229"
  ```

#### Gemini
- **Requirements:** This model is currently labeled as experimental and is potentially unstable, use it with caution.
- **API Key:** You must have a valid `GEMINI_API_KEY`.
- **Recommended Model:** Gemini 1.5 Pro.
- **Configuration:** 
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
  Sublayer.configuration.ai_model = "gemini-1.5-pro"
  ```