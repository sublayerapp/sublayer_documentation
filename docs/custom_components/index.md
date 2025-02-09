---
title: Custom Components
nav_order: 4
has_children: true
---

# Custom Components

The Sublayer framework is designed to be extensible and customizable. Beyond just building your own Generators, Actions, and Agents, you can also create your own custom Output Adapters for your Generators, Triggers for your Agents, and Providers for any custom model you're working with.

## Creating Custom AI Providers

Sublayer allows integration with various AI models. To add a custom AI provider, define a class that implements the `.call` method, conforming to the protocol expected by the framework. This ensures that your custom provider can be seamlessly used within the Sublayer ecosystem.

**Example:**

```ruby
module Sublayer
  module Providers
    class CustomProvider
      def self.call(prompt:, output_adapter:)
        # Implement API call to custom AI service and return formatted response
      end
    end
  end
end
```

## Creating Custom Output Adapters

Output adapters in Sublayer are powerful components that define the structure and format of the AI-generated output. Learn more about the interface and requirements for building a custom output adapter in the detailed guide.

* [Output Adapters Guide]({% link docs/custom_components/output-adapters.md %})

## Creating Custom Triggers

A trigger is an activation mechanism in an agent that determines when an agent performs its tasks. You can define custom triggers to control agent behavior based on file changes, time intervals, or custom events.

* [Agent Triggers Guide]({% link docs/custom_components/triggers.md %})

Each section provides detailed implementation steps, ensuring you have the guidance needed to expand the framework's abilities according to your needs.