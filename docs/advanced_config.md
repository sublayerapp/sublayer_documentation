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

---

## Example Configurations

This section will provide explicit examples to configure different providers in Sublayer, illustrating how to harness the full potential of the framework.

### Example: Setting up OpenAI
```ruby
# Set the API key in your environment
export OPENAI_API_KEY="your-openai-api-key"

# Configure Sublayer to use OpenAI
Sublayer.configure do |config|
  config.ai_provider = Sublayer::Providers::OpenAI
  config.ai_model = "gpt-4o"
end
```

### Example: Setting up Claude
```ruby
# Set the API key in your environment
export ANTHROPIC_API_KEY="your-anthropic-api-key"

# Configure Sublayer to use Claude
Sublayer.configure do |config|
  config.ai_provider = Sublayer::Providers::Claude
  config.ai_model = "claude-3-5-sonnet-20240620"
end
```

### Example: Setting up Gemini
```ruby
# Set the API key in your environment
export GEMINI_API_KEY="your-gemini-api-key"

# Configure Sublayer to use Gemini
Sublayer.configure do |config|
  config.ai_provider = Sublayer::Providers::Gemini
  config.ai_model = "gemini-1.5-pro"
end
```