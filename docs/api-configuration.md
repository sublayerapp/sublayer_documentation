---
layout: default
title: API Configuration
nav_order: 7
---

# API Configuration

This page provides detailed instructions for setting up the API keys required for using various AI providers with Sublayer. Having a dedicated section ensures clarity and prevents confusion from scattered instructions.

## Setting up API keys

### OpenAI (Default)

Set your `OPENAI_API_KEY` environment variable. To obtain an API key, please visit [OpenAI](https://openai.com/product).

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

### Anthropic

Set your `ANTHROPIC_API_KEY` environment variable. To obtain an API key, please visit [Anthropic](https://anthropic.com/).

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
```

### Gemini

(Gemini's function calling API is in beta. Not recommended for production use.)

Set your `GEMINI_API_KEY` environment variable. To obtain an API key, please visit [Google AI Studio](https://ai.google.dev/).

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-pro"
```