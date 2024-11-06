---
title: Custom Components
nav_order: 4
---
# Custom Components

The Sublayer framework is designed to be extensible and customizable. Beyond just building your own Generators, Actions, and Agents, you can also create your own custom Output Adapters for your Generators, Triggers for your Agents, and Providers for any custom model you're working with.

* [Output Adapters]({% link docs/custom_components/output-adapters.md %})
* [Triggers]({% link docs/custom_components/triggers.md %})

## Getting Started with Custom Adapters

Creating custom adapters allows you to define how the outputs from your Generators and other components are handled. This can be particularly useful if you need the output to be formatted or processed in a specific way.

### Building Custom Output Adapters and Providers

To build custom output adapters and providers, you can follow these steps:

1. **Understand the Interface:** Study the interface defined in `lib/sublayer/components/output_adapters`. Your adapter should implement the required methods.
2. **Use Existing Snippets:** Use snippets from `spec/components/output_adapters` to guide your development and ensure compatibility with the rest of the Sublayer framework.
3. **Develop the Adapter:** Create your adapter implementing necessary methods such as `initialize`, `properties`, and any additional methods needed for your processing logic.
4. **Test and Validate:** Compile your adapter and test it using the relevant specs to check its functionality.

### Example: Creating an Example Adapter

This example demonstrates how to create a simple adapter:

```ruby
class MyOutputAdapter < Sublayer::Components::OutputAdapters::Base
  attr_reader :name, :description

  def initialize(name:, description:)
    @name = name
    @description = description
  end

  # Define more methods as needed
end
```

Refer to the provided specs and existing adapter implementations for more detailed examples.