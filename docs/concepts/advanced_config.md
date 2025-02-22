---
title: Advanced Config
nav_order: 6
has_children: true
---
# Advanced Config

After installing Sublayer, you can choose between any of the available LLM providers we support.

## AI Provider Configuration

Sublayer supports configuring multiple AI providers, allowing you to switch between different models easily. Below is a comprehensive guide for setting up each provider with examples.

### OpenAI (Default)

Set your `OPENAI_API_KEY` environment variable. (Visit [OpenAI](https://openai.com/product) to get an API key.)

#### Example Configuration:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

### Claude

Supported Models: Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)

#### Example Configuration:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

### Google Gemini

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

#### Example Configuration:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

---

Below are descriptions of some of the primary configurations:

- **`ai_provider`**: Specifies which provider to use for AI tasks.
- **`ai_model`**: Selects the model version depending on the provider.

Remember, each AI provider may have its own unique setups, such as models and versions. Ensure you have the necessary API keys for each provider.

---

Continue to explore the flexibility of using various AI models by adjusting provider-specific settings as needed.