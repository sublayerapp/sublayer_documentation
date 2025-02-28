---
title: Custom Output Adapter
parent: Custom Components
nav_order: 4
---
# Custom Output Adapter

Output adapters are a mechanism in the Sublayer framework that define how the response from an AI model is transformed and returned. Creating a custom output adapter allows you to define new types of outputs tailored specifically to your application's needs.

## Creating a Custom Output Adapter

1. **Define the Adapter Class**
   - Define a new class under the `Sublayer::Components::OutputAdapters` module.
   - Implement required methods like `initialize`, `properties`, and optionally, `materialize_result`.

2. **Adapter Properties**
   - Use the `properties` method to define the expected structure and types of the model's response.

3. **Integrate with Generators**
   - Pass your custom output adapter to a generator using the `llm_output_adapter` directive.

## Example
```ruby
module Sublayer
  module Components
    module OutputAdapters
      class CustomAdapter
        attr_reader :name, :description

        def initialize(options)
          @name = options[:name]
          @description = options[:description]
        end

        def properties
          [OpenStruct.new(name: @name, type: 'custom', description: @description, required: true)]
        end

        def materialize_result(raw_result)
          # Process raw_result according to custom logic
        end
      end
    end
  end
end
```

By defining custom output adapters in this way, you can leverage Sublayer's flexibility to suit varied application requirements, standardizing the structure and format of information received from AI models.