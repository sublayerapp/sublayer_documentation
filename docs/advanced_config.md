---
title: Advanced Config
nav_order: 6
---
# Advanced Config

After installing Sublayer, you can configure the AI provider to fit your specific needs. Here, we list the available LLM providers you can select from, along with the configuration details needed for each.

## Providers Configuration

### OpenAI (Default)

OpenAI is the default provider configured in Sublayer. To use it, make sure you set your `OPENAI_API_KEY` environment variable. This allows you to interact with the OpenAI models such as GPT-4o. 

**Configuration Example:**
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```
Visit [OpenAI](https://openai.com/product) to get an API key.

### Anthropic (Claude)

Anthropic provides models such as Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet. To configure, you need to set your `ANTHROPIC_API_KEY` environment variable.

**Configuration Example:**
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```
Visit [Anthropic](https://anthropic.com/) to get an API key.

### Google (Gemini)

Note: The Gemini API is currently in beta and may not be recommended for production use. Ensure you set your `GEMINI_API_KEY` environment variable.

**Configuration Example:**
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```
Visit [Google AI Studio](https://ai.google.dev/) to get an API key.

By configuring these settings, you can choose the behavior and capabilities of your AI interactions by selecting the appropriate pre-configured provider.

For further guidance on setting custom Providers or for more options, refer to the main documentation at [Sublayer Documentation](https://docs.sublayer.com).
