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

## Custom Generator Setups

### Creating Custom Generators

Custom generators can be tailored for specific needs by modifying the generator's logic, input options, and output formatting to fit your unique data pipelines or application structures.

### Utilizing Different Providers

Sublayer supports a range of providers. You can switch between them or use multiple providers within the same application, depending on the needs of your solution.

### Handling Edge Cases

It's crucial to anticipate and handle edge cases in your generator logic. Implement appropriate error handling and validation to ensure robustness and reliability.

### Example: Integrating a New Provider

Here’s how you can integrate a hypothetical new provider into your setup:

```ruby
module Sublayer
  module Providers
    class NewProvider
      def self.call(prompt:, output_adapter:)
        # Integration logic for the new provider
      end
    end
  end
end

Sublayer.configuration.ai_provider = Sublayer::Providers::NewProvider
Sublayer.configuration.ai_model = "new-model-1.0"
```

By understanding and utilizing the advanced configurations possible with Sublayer, you can maximize the efficiency and effectiveness of your AI solutions.