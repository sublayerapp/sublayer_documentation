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

## Custom AI Providers

To set up a custom AI provider, you need to create a Ruby class that adheres to the Sublayer provider interface. This allows you to integrate other AI models not natively supported by Sublayer.

### Example Ruby Class

Below is an example of how you might implement a custom provider:

```ruby
module Sublayer
  module Providers
    class CustomProvider
      def self.call(prompt:, output_adapter:)
        # Your custom API call logic here
        response = HTTParty.post("https://api.customai.com/generate", {
          body: { prompt: prompt, model: output_adapter.name },
          headers: { "Authorization" => "Bearer #{ENV['CUSTOM_API_KEY']}" }
        })

        raise "Error" unless response.success?

        response_body = JSON.parse(response.body)
        response_body["data"]
      end
    end
  end
end
```

To utilize this provider, set the configuration in your `lib/sublayer.rb`:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::CustomProvider
Sublayer.configuration.ai_model = "custom-model"
```

Ensure you replace placeholders like `https://api.customai.com/generate` and parse your API's specific response format.