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


## Configuring LLM Providers

In this section, we'll guide you through setting up various Large Language Model (LLM) providers that are supported by Sublayer. Here, you will find setup instructions, required environment variables, and example configurations for each provider.

### Supported LLM Providers

We currently support the following LLM providers:
- OpenAI
- Gemini
- Claude

### Setup Instructions

#### OpenAI
1. Sign up at [OpenAI](https://openai.com/).
2. Retrieve your API key and set it as an environment variable `OPENAI_API_KEY`.
3. Add the following configuration to your project:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

#### Gemini
1. Sign up at [Google AI Studio](https://ai.google.dev/).
2. Retrieve your API key and set it as an environment variable `GEMINI_API_KEY`.
3. Add the following configuration to your project:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-pro"
```

::: warning
Gemini's function calling API is in beta and not recommended for production.
:::

#### Claude
1. Sign up at [Anthropic](https://anthropic.com/).
2. Retrieve your API key and set it as an environment variable `ANTHROPIC_API_KEY`.
3. Add the following configuration to your project:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
```

### Example Configurations

Here are examples of how to configure each provider within your Sublayer project:

```ruby
# Example for OpenAI configuration
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"

# Example for Gemini configuration
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"

# Example for Claude configuration
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model ="claude-3-5-sonnet-20240620"
```

This section aims to make it easier for you to start using the provider of your choice in your project.