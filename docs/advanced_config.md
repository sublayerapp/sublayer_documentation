---
title: Advanced Config
nav_order: 6
---
# Advanced Config

After installing Sublayer, you can choose between any of the available LLM providers we support.

## Supported LLM Providers
We currently support OpenAI, Claude, and Gemini as LLM providers.

It is important to set the appropriate environment variables for each provider to function correctly.

## OpenAI (Default)

Set your `OPENAI_API_KEY` environment variable. (Visit [OpenAI](https://openai.com/product) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

Pitfall:
Ensure that your API key is correct and active. Without a valid key, requests to OpenAI's API will fail.

## Claude

Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
```

Pitfall:
Ensure compatibility between the selected model and your usage requirements as different models support different features.

## Gemini [UNSTABLE]

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-pro"
```

Pitfall:
Gemini's API is in beta and may have undocumented changes that can affect stability. Proceed with caution in production environments.

## Integration Example

Here's a code example of integrating these providers into the Sublayer framework:

```ruby
# Example integration in a Ruby application

require 'sublayer'

# Setting up OpenAI as the provider
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"

# Example of making an AI model call
result = Sublayer::Generators::SomeGenerator.new.some_method
puts result
```

By setting up environment variables correctly and understanding each provider's specifics, you can leverage the power of LLMs in your Sublayer application.
