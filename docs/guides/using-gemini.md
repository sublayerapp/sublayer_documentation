---
title: Using Gemini with Sublayer
parent: Guides
---

# Using Gemini with Sublayer

This guide covers the setup for using the Gemini model with Sublayer, noting any experimental features.

## Setup
1. **API Key**: You must have your Google AI API key ready and set it as `GEMINI_API_KEY` in your environment variables.
2. **Gemfile**: Add Sublayer to your Gemfile:
   ```ruby
   gem 'sublayer', '~> 0.2'
   ```
3. **Configuration**: Set up Sublayer to use the Gemini model:
   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
   Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
   ```

## Experimental Features
- The Gemini model includes function-calling capabilities that are still experimental.

## Example Usage
Here's how you can use Gemini with Sublayer to generate product descriptions:
```ruby
require 'sublayer'

Sublayer.configure do |config|
  config.ai_provider = Sublayer::Providers::Gemini
  config.ai_model = "gemini-1.5-flash-latest"
end

def generate_product_description(name, category)
  class ProductDescriptionGenerator < Sublayer::Generators::Base
    llm_output_adapter type: :named_strings,
      name: "product_description",
      description: "The product description"

    def initialize(name, category)
      @name = name
      @category = category
    end

    def prompt
      "Create a detailed description for the following product:\nName: #{@name}\nCategory: #{@category}"
    end
  end

  generator = ProductDescriptionGenerator.new(name, category)
  generator.generate
end

puts generate_product_description("Super Gadget", "Electronics")
```
This script sets up Gemini to generate a description for a product, leveraging its function-calling capability.