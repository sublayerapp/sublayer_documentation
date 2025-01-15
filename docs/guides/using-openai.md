---
title: Using OpenAI with Sublayer
parent: Guides
---

# Using OpenAI with Sublayer

This guide explains how to set up and configure the OpenAI model with Sublayer, including handling environment variables.

## Setup
1. **API Key**: Ensure you have your OpenAI API key. Set it in your environment variables as `OPENAI_API_KEY`.
2. **Gemfile**: Add Sublayer to your Gemfile:
   ```ruby
   gem 'sublayer', '~> 0.2'
   ```
3. **Configuration**: In your application setup, configure Sublayer to use OpenAI:
   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
   Sublayer.configuration.ai_model = "gpt-4o"
   ```

## Handling Environment Variables
- Store your `OPENAI_API_KEY` in a secure environment file and load it at runtime to ensure your credentials remain safe.

## Example Usage
Here's a basic example of how you might use OpenAI with Sublayer to generate text:
```ruby
require 'sublayer'

Sublayer.configure do |config|
  config.ai_provider = Sublayer::Providers::OpenAI
  config.ai_model = "gpt-4o"
end

def generate_text(prompt)
  # Example Generator
  class TextGenerator < Sublayer::Generators::Base
    llm_output_adapter type: :single_string,
      name: "generated_text",
      description: "Generated text from OpenAI"

    def initialize(prompt)
      @prompt = prompt
    end

    def prompt
      @prompt
    end
  end

  generator = TextGenerator.new(prompt)
  generator.generate
end

puts generate_text("Write a poem about the ocean.")
```
This code sets up a simple text generator using OpenAI and Sublayer to produce a poem about the ocean.