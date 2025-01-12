---
layout: default
title: LLM Providers
nav_order: 7
---

# LLM Providers

This section provides step-by-step instructions and considerations for setting up different LLM providers with Sublayer, including OpenAI, Gemini, and Claude.

## OpenAI

1. **Set up**: Ensure you have an OpenAI API key set in the `OPENAI_API_KEY` environment variable. Visit [OpenAI](https://openai.com/product) to get an API key.
2. **Configuration**:
   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
   Sublayer.configuration.ai_model = "gpt-4o"
   ```
3. **Example Usage**:
   ```ruby
   # Example code snippet
   Sublayer::Generators::YourGenerator.new.generate
   ```

## Claude

1. **Set up**: Set your Claude API key in the `ANTHROPIC_API_KEY` environment variable. Visit [Anthropic](https://anthropic.com/) to get an API key.
2. **Configuration**:
   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
   Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
   ```
3. **Example Usage**:
   ```ruby
   # Example code snippet
   Sublayer::Generators::YourGenerator.new.generate
   ```

## Gemini

1. **Set up**: Ensure your Gemini API key is set in the `GEMINI_API_KEY` environment variable. Visit [Google AI Studio](https://ai.google.dev/) to get an API key.
2. **Configuration**:
   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
   Sublayer.configuration.ai_model = "gemini-1.5-pro"
   ```
3. **Example Usage**:
   ```ruby
   # Example code snippet
   Sublayer::Generators::YourGenerator.new.generate
   ```

## Considerations and Limitations

- **Gemini**: While Gemini offers unique feature sets, its function calling API is in beta and considered unstable for production environments.
- Ensure each provider's model configuration aligns with your application's requirements.