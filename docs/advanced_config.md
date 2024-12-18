---
title: Advanced Config
nav_order: 6
---

# Advanced Config

After installing Sublayer, you can choose between any of the available LLM providers we support.

To avoid confusion, here is a list of default models for each provider:

- **OpenAI**: The default model is `gpt-4o`. It is required to set your `OPENAI_API_KEY` environment variable. 
  Usage:
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
  Sublayer.configuration.ai_model = "gpt-4o"
  ```

- **Anthropic**: Models like Claude 3+ (e.g., Opus, Haiku, Sonnet) are supported. The `claude-3-opus-20240229` model can be started by setting `ANTHROPIC_API_KEY`. 
  
  Usage:
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
  Sublayer.configuration.ai_model = "claude-3-opus-20240229"
  ```

- **Google**: Primarily uses the Gemini models, the default being `gemini-1.5-flash-latest`, with `GEMINI_API_KEY` required.
  
  Usage:
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
  Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
  ```

Visit each provider's website for details on getting API keys.