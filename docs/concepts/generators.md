---
title: Generators
parent: Core Concepts
nav_order: 1
---
# Generators

Generators are responsible for generating specific outputs based on input data. They are the building blocks of the Sublayer framework and do not perform any actions or complex decision-making.

## Capabilities
Generators are highly flexible and can be designed to perform a wide variety of generation tasks. They offer a systematic way to harness the power of AI models in your applications.

## Integration with Actions and Agents
- **Actions**: Serve as tools to gather inputs or utilize outputs from Generators.
- **Agents**: Incorporate Generators into their workflows to achieve specific goals.

## Creating a Generator
Defining a custom Generator involves subclassing `Sublayer::Generators::Base` and creating a prompt tailored to the LLM (Language Model).

### Example
```ruby
class CustomGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string,
    name: "output",
    description: "Output description"

  def initialize(input)
    @input = input
  end

  def prompt
    <<-PROMPT
    Please generate output based on the following input: 

    #{@input}
    PROMPT
  end
end
```

### Step-by-Step Guide
1. **Define the Output Adapter**: Specify output type and structure.
2. **Initialize with Data**: Provide input data for generating outputs.
3. **Implement Prompt**: Write a prompt for the LLM to perform the task.

### Practical Use Case
Imagine needing to generate Ruby methods from user stories. Use the story details as inputs to guide your generator.

### Illustrative Figures
Insert diagrams/figures to show the interaction between Generators, Actions, and Agents.

## Links and References
- [Core Concepts]({% link docs/concepts/index.md %})
- [Actions]({% link docs/concepts/actions.md %})
- [Agents]({% link docs/concepts/agents.md %})

For further assistance, check the [Troubleshooting Guide]({% link docs/troubleshooting.md %}).

---