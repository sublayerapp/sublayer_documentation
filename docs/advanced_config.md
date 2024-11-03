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

## Creating Custom AI Model Providers

To extend Sublayer to support additional AI models beyond the built-in ones, you can create custom providers. Follow the steps below to implement custom model support:

### Step 1: Define Your Custom Provider Class

In your Sublayer project, create a new Ruby file, and define a class within `Sublayer::Providers` module. The class should have a `.call` method that takes `prompt:` and `output_adapter:` as keyword arguments:

```ruby
module Sublayer
  module Providers
    class MyCustomProvider
      def self.call(prompt:, output_adapter:)
        # Implement API interaction here
      end
    end
  end
end
```

### Step 2: Configure Your Provider

After defining your provider class, configure Sublayer to use it. Set the provider and model in your configuration file:

```ruby
Sublayer.configure do |config|
  config.ai_provider = Sublayer::Providers::MyCustomProvider
  config.ai_model = "your-model-name"
end
```

### Step 3: Implement the API Call

Within the `.call` method, implement logic to interact with the specific API of the AI model. You may want to refer to existing provider implementations in `lib/sublayer/providers/open_ai.rb` or `spec/providers/open_ai_spec.rb` for examples.

### Example

For guidance, look at `lib/sublayer/providers/open_ai.rb` and `spec/providers/open_ai_spec.rb` to understand how to structure your API call and handle responses.