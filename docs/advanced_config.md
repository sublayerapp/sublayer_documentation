---
title: Advanced Config
nav_order: 6
---
# Advanced Config

After installing Sublayer, you can choose between different LLM providers we support. Below are the available options and how to configure them.

## OpenAI (Default)

Set your `OPENAI_API_KEY` environment variable. (Visit [OpenAI](https://openai.com/product) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

- **Common Issues**: 
  - Make sure your API key is correctly set as an environment variable.
  - For token limit issues, consider breaking your tasks into smaller parts.

## Anthropic - Claude

Supported Models: Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

- **Common Issues**:
  - Ensure your API key has the necessary permissions.
  - Check the model name for any typos if you encounter errors.

## Google - Gemini [UNSTABLE]

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

Note: Gemini's function calling API is in beta, and stability is not guaranteed. Avoid using in production systems.

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

- **Common Issues**:
  - Ensure your API key is correctly set up and has not expired.
  - This provider can be less stable; check logs for detailed error messages.

## General Tips for Switching Providers
- Change the `ai_provider` and `ai_model` parameters in your configuration file to switch between different providers and models.
- Verify each provider's API key and permissions.
- Consult documentation and support resources provided by each provider for specific troubleshooting.

For further guidance on using different providers, consult the [full documentation](https://docs.sublayer.com) or join the community on our [Discord](https://discord.gg/pWZ689GW7U).