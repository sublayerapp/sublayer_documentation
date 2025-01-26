---
title: Generators
parent: Core Concepts
nav_order: 1
---
# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

### Examples with `llm_output_adapter`

Here's how you can use different configurations with the `llm_output_adapter`:

```ruby
class SimpleStringGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string,
    name: "simple_output",
    description: "A simple string output"

  ...
end

class ListOfStringsGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :list_of_strings,
    name: "list_output",
    description: "A list of strings output"

  ...
end
```

These examples demonstrate configuring the generator to expect either a single string or a list of strings as output.

### Custom `llm_output_adapter` Types

Creating your own `llm_output_adapter` involves defining the structure and type of the AI-generated output. Here’s a basic guide:

1. Define the required properties, like name and description.
2. Implement the interface with methods such as `initialize`, `properties`, and optionally `load_instance_data` and `materialize_result`.

Example:

```ruby
class CustomOutputAdapter
  include Sublayer::Components::OutputAdapters::Formattable

  def initialize(options)
    @name = options[:name]
    @description = options[:description]
  end

  def properties
    [OpenStruct.new(name: @name, type: 'custom_type', description: @description, required: true)]
  end

  def materialize_result(raw_result)
    # Custom processing of the raw LLM result
  end
end
```

Integrate by specifying your class in the generator:

```ruby
llm_output_adapter class: CustomOutputAdapter, name: "custom_output", description: "Custom output type"
```

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide]({% link docs/troubleshooting.md %}) for common error scenarios and solutions.
