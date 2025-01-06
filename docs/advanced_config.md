---
title: Advanced Config
nav_order: 6
---

# Advanced Config

After installing Sublayer, you can choose between any of the available LLM providers we support.

## AI Provider Configuration

### OpenAI

To configure OpenAI as your AI provider, set your `OPENAI_API_KEY` environment variable. You can visit [OpenAI](https://openai.com/product) to get an API key.

#### Usage

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

### Anthropic

Supported Models: Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

To use Anthropic, set your `ANTHROPIC_API_KEY` environment variable. Visit [Anthropic](https://anthropic.com/) to get an API key.

#### Usage

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
```

### Gemini [UNSTABLE]

(Gemini's function calling API is in beta and not recommended for production use.)

To set up Gemini, use the `GEMINI_API_KEY` environment variable. Visit [Google AI Studio](https://ai.google.dev/) to obtain an API key.

#### Usage

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-pro"
```

Be cautious when using Gemini as its API is currently experimental.

