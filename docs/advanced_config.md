---
title: Advanced Config
nav_order: 6
has_children: false
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

## LLM Provider Best Practices

### OpenAI

OpenAI models are known for their high reliability and strong performance across a variety of tasks. They are well-suited for applications that require sophisticated language understanding and generation. Cost can be a consideration for applications with high usage volumes, so it's important to optimize the API calls to manage expenses effectively.

**Stability:** High

### Gemini

Gemini's models use cutting-edge technology and are integrated with Google's AI infrastructure, offering competitive performance. They are ideal for experimental and research-oriented projects but are currently less stable due to their beta status. It is recommended to have fallback mechanisms to handle potential API changes or outages.

**Stability:** Experimental (Beta)

### Claude

Claude models are designed for performance and scalability. They work well in scenarios where rapid response times and efficiency are critical. While generally stable, it's useful to stay updated on model improvements and alterations that Anthropic may release.

**Stability:** Moderate
