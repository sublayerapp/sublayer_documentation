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

### Gemini Setup

To integrate the Gemini provider, follow these steps:

1. **Environment Setup**:
   - Ensure your `GEMINI_API_KEY` environment variable is set.
   
   ```bash
   export GEMINI_API_KEY="your-api-key"
   ```

2. **Initialize Gemini Provider in your application**:
   
   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
   Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
   ```

3. **Example Integration**:
   - Here’s a basic example of using the Gemini provider:
   
   ```ruby
   require 'sublayer'

   class GeminiIntegrationExample < Sublayer::Generators::Base
     llm_output_adapter type: :single_string,
                        name: "example_output",
                        description: "Example output for demonstration"

     def initialize(input_text)
       @input_text = input_text
     end

     def generate
       super
     end

     def prompt
       "Process this text: \\#{@input_text}"
     end
   end

   example = GeminiIntegrationExample.new("Hello, Gemini!")
   puts example.generate
   ```

4. **Troubleshooting**:
   - **Invalid API Key**: Ensure the `GEMINI_API_KEY` is correct and active.
   - **Network Issues**: Check your network connection and any firewalls that might block access.
   - **Dependencies**: Ensure all required gems and dependencies are installed.

By following these steps, you can effectively integrate and use the Gemini API in your applications.