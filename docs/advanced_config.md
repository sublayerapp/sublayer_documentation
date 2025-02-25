---
title: Advanced Config
nav_order: 6
---
# Advanced Config

After installing Sublayer, you can choose between any of the available LLM providers we support.

## AI Provider Configuration

You can configure the AI provider using different providers and models such as Claude, Gemini, or OpenAI. It involves setting the model and API key as environment variables.

### OpenAI (Default)

1. Set your `OPENAI_API_KEY` environment variable. (Visit [OpenAI](https://openai.com/product) to get an API key.)
    ```bash
    export OPENAI_API_KEY="your-openai-api-key"
    ```

2. Usage:
    ```ruby
    Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
    Sublayer.configuration.ai_model = "gpt-4o"
    ```

### Anthropic

1. Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)
    ```bash
    export ANTHROPIC_API_KEY="your-anthropic-api-key"
    ```

2. Usage:
    ```ruby
    Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
    Sublayer.configuration.ai_model = "claude-3-opus-20240229"
    ```

### Google

1. Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)
    ```bash
    export GEMINI_API_KEY="your-gemini-api-key"
    ```

2. Usage:
    ```ruby
    Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
    Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
    ```

By following the above steps, you can seamlessly switch between different AI providers and models as needed.