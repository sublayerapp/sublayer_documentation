---
title: Using Claude with Sublayer
parent: Guides
---

# Using Claude with Sublayer

This guide explains how to set up and configure the Claude model with Sublayer, emphasizing the required settings and potential issues.

## Setup
1. **API Key**: Obtain your Anthropic API key and set it in your environment variables as `ANTHROPIC_API_KEY`.
2. **Gemfile**: Add Sublayer to your Gemfile:
   ```ruby
   gem 'sublayer', '~> 0.2'
   ```
3. **Configuration**: In your application setup, configure Sublayer to use Claude:
   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
   Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
   ```

## Required Settings
- Ensure the `ANTHROPIC_API_KEY` is securely stored and accessible during runtime.

## Potential Issues
- Be aware of rate limits and usage costs associated with the Claude API.
- Check the Claude documentation for any updates on API changes or deprecated features.

## Example Usage
Below is an example of setting up Claude with Sublayer to analyze text sentiment:
```ruby
require 'sublayer'

Sublayer.configure do |config|
  config.ai_provider = Sublayer::Providers::Claude
  config.ai_model = "claude-3-5-sonnet-20240620"
end

def analyze_sentiment(text)
  class SentimentAnalyzer < Sublayer::Generators::Base
    llm_output_adapter type: :single_string,
      name: "sentiment",
      description: "Text sentiment analysis result"

    def initialize(text)
      @text = text
    end

    def prompt
      "Analyze the sentiment of the following text: 
#{@text}"
    end
  end

  analyzer = SentimentAnalyzer.new(text)
  analyzer.generate
end

puts analyze_sentiment("I am feeling so happy and excited today!")
```
This example demonstrates how to use Claude to determine the sentiment of a text input.