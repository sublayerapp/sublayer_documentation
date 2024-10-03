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

Supported Models: Gemini 1.5 Pro, Gemini 1.5 Flash

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

---
### AI Model Configuration Details

Enrich your applications by configuring the AI models according to your needs. Below are the supported configurations per provider:

- **OpenAI**: 
  - Default model: `gpt-4o` 
  - Suitable for general-purpose AI tasks with high accuracy.

- **Anthropic**: 
  - Models include Claude 3+ series for specialized tasks requiring various levels of creativity and depth.

- **Google (Gemini)**:
  - Target complex, data-intensive tasks with models like `gemini-1.5-pro`. 
  - Note: Experimental and best used for testing and development rather than production.

Configuring your AI models correctly can significantly affect the performance and output of your applications. Ensure your API keys are secured and rotate them periodically according to your provider's best practices.