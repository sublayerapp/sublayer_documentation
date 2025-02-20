---
layout: default
title: Providers
parent: Core Concepts
nav_order: 4
---

# Providers

The purpose of this documentation is to guide you on how to create and integrate custom Providers into the Sublayer framework to allow seamless integration of different AI models.

## Setting Up Environment Variables

To securely access external AI services, define specific environment variables for API keys. For example:

```shell
export CUSTOM_AI_API_KEY="your-api-key"
```

## Declaring New Provider Classes

To declare a new Provider, you need to create a class under `Sublayer::Providers`. Here is a basic structure of a Provider class:

```ruby
module Sublayer
  module Providers
    class CustomAI
      def self.call(prompt:, output_adapter:)
        # Add logic to send a prompt to the AI service
        # Return the processed result
      end
    end
  end
end
```

- **call method**: The `call` method should handle sending a prompt to the AI model and returning the result.

## Integrating Providers with Generators and Actions

To use your custom Provider with the existing Generators and Actions:

1. **Configuration**: Set the provider in your configuration file:
   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::CustomAI
   ```
2. **Implement as needed**: Add any specific integration logic required for your Provider model.

This setup allows you to extend the capabilities of the Sublayer framework by leveraging different AI models.