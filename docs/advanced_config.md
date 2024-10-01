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

### Updated Model Options

Supported Models: GPT-4o, GPT-4 Turbo, GPT-3.5 Turbo

These models are built to provide a range of capabilities. Choose based on your application requirements regarding depth of understanding, response speed, and cost efficiency.

## Anthropic

Supported Models: Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

### Expanded Model Options

Supported Models: Claude-3-5-Sonnet, Claude-3-Opus, Claude-3-Haiku-20240307

When selecting a model, consider factors such as the poetic natural language capabilities or concise generation needs.

## Google

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

### Updated Model Selection

Supported Models: Gemini-1.5-Flash-Latest, Gemini-1.5-Pro-Latest

Gemini models provide broad capabilities suitable for diverse AI tasks. Aim for "Pro" versions for advanced performance requirements.

---

By ensuring your API keys and desired model settings are correctly configured, you can leverage the full potential of your chosen provider within the Sublayer framework. Remember to regularly review and update your configurations to align with your project's evolving needs and the capabilities of available AI technologies.