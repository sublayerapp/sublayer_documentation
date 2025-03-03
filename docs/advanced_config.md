---
title: Advanced Configuration
nav_order: 6
---
# Advanced Configuration

With the installation of the Sublayer framework, you have the flexibility to integrate with multiple LLM providers, each offering unique models and capabilities. This section will guide you through setting up and configuring API keys for various supported providers.

## OpenAI (Default Provider)

**API Key Configuration**
- Obtain your OpenAI API key by signing up or logging in at [OpenAI's website](https://openai.com/product).
- Set your `OPENAI_API_KEY` environment variable:

  ```shell
  export OPENAI_API_KEY="your-openai-api-key"
  ```

**Configuration in Sublayer**

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

## Anthropic's Claude Models

**API Key Configuration**
- Sign up or log in to [Anthropic](https://anthropic.com/) to get an API key.
- Set your `ANTHROPIC_API_KEY` environment variable:

  ```shell
  export ANTHROPIC_API_KEY="your-anthropic-api-key"
  ```

**Configuration in Sublayer**

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
```

## Google's Gemini Models

**API Key Configuration**
- Access [Google AI Studio](https://ai.google.dev/) and secure your API key.
- Set the `GEMINI_API_KEY` environment variable:

  ```shell
  export GEMINI_API_KEY="your-gemini-api-key"
  ```

**Configuration in Sublayer**

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

## Switching Between Providers

Switching providers is straightforward within Sublayer, made possible by merely changing the provider configuration as shown in the examples above. This flexibility allows you to utilize the strengths of each model as your project's requirements evolve.

## Additional Tips
- Always ensure your API keys remain private and are not exposed in public repositories.
- Monitor your API usage to manage costs effectively.

This guidance empowers you to fully leverage the Sublayer framework's capabilities across a spectrum of leading LLM providers. Happy building!