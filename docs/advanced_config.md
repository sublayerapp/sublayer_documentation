---
title: Advanced Config
nav_order: 6
---
# Advanced Config

After installing Sublayer, you can choose between any of the available LLM providers we support. This guide will help you configure Sublayer for different AI providers.

## Supported AI Providers

### OpenAI (Default)

Set your `OPENAI_API_KEY` environment variable. (Visit [OpenAI](https://openai.com/product) to get an API key.)

Configuration:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

### Anthropic - Claude

Supported Models: Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)

Configuration:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

### Google - Gemini

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

Configuration:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

## Setting the AI Model

Depending on the provider, you may wish to use a different model. The following configurations show the models available for each provider.

### Examples:

- **OpenAI**
  - Default: `gpt-4o`
  - Configure:
    ```ruby
    Sublayer.configuration.ai_model = "gpt-4o"
    ```

- **Claude**
  - Example: `claude-3-haiku-20240307`
  - Configure:
    ```ruby
    Sublayer.configuration.ai_model = "claude-3-haiku-20240307"
    ```

- **Gemini**
  - Example: `gemini-1.5-pro`
  - Configure:
    ```ruby
    Sublayer.configuration.ai_model = "gemini-1.5-pro"
    ```

## Environment Variables

Ensure that for each provider you have the respective environment variable set:

- **OpenAI**: `OPENAI_API_KEY`
- **Anthropic**: `ANTHROPIC_API_KEY`
- **Gemini**: `GEMINI_API_KEY`

Appropriately setting these variables is crucial for authenticating requests and ensuring smooth integration with the Sublayer framework.