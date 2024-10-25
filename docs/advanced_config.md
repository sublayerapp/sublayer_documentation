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

### Potential Errors and Troubleshooting
- **API Key Error**: Ensure your `OPENAI_API_KEY` is set properly as an environment variable. Double-check the spelling and validity.
- **Network Error**: Check your internet connection and firewall settings to ensure they allow outbound traffic on the required ports.
- For more, visit our [Troubleshooting Guide](docs/troubleshooting.md).

## Anthropic

Supported Models: Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

### Potential Errors and Troubleshooting
- **API Key Error**: Verify that your `ANTHROPIC_API_KEY` is correctly set and active.
- **Network Error**: Make sure the API endpoint is reachable from your network.
- Refer to the [Troubleshooting Guide](docs/troubleshooting.md) for further assistance.

## Google

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

### Potential Errors and Troubleshooting
- **API Key Error**: Confirm your `GEMINI_API_KEY` is properly configured.
- **Network Error**: Ensure that your connection is stable and the server is accessible.
- For additional help, check out our [Troubleshooting Guide](docs/troubleshooting.md).

## Safeguarding Best Practices
- Never expose your API keys in your source code. Use environment variables or secret management tools to store keys securely.
- Rotate your API keys regularly in accordance with your provider's security practices.