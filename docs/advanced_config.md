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

### Advanced Usage
OpenAI provides versatile models that can be fine-tuned for specific applications. Consider specifying the `temperature` or using few-shot examples for improved results.

### Troubleshooting
- **API Key Errors**: Ensure the `OPENAI_API_KEY` variable is correctly set.
- **Rate Limits**: Monitor your request usage to avoid hitting OpenAI's rate limits.

### Example Configuration
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-3.5-turbo"
Sublayer.configuration.max_tokens = 1500
```

## Anthropic

Supported Models: Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

### Advanced Usage
Claude models are designed for advanced dialog management and can be fine-tuned with custom datasets for specific tasks.

### Troubleshooting
- **Authentication Issues**: Double-check your API key and permissions.
- **Response Time**: If experiencing delays, consider optimizing your request structure or reaching out to support.

### Example Configuration
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
Sublayer.configuration.temperature = 0.5
```

## Google

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

### Advanced Usage
Leverage Gemini's cutting-edge capabilities by integrating its models into pipeline workflows for data processing and analysis.

### Troubleshooting
- **Beta Feature Stability**: Since Gemini APIs are in beta, be prepared for potential changes.
- **Connectivity Problems**: Ensure you have network access to Google services.

### Example Configuration
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-pro"
Sublayer.configuration.temperature = 0.3
Sublayer.configuration.max_tokens = 1000
```