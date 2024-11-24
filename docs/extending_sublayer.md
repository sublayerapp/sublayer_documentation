---
layout: default
title: Extending Sublayer
nav_order: 7
---

# Extending Sublayer

Sublayer is a highly modular framework that allows developers to extend its functionality by creating custom components. This guide provides a comprehensive overview of how to create your own Generator, Action, and Agent subclasses, along with how you can contribute these to the community repository.

## Custom Generators

Generators in Sublayer are used to produce specific outputs based on given inputs, typically by interacting with an LLM.

### Creating a Custom Generator

1. **Subclass the Base Generator** - Create a new class that inherits from `Sublayer::Generators::Base`.
2. **Define Your Output Adapter** - Utilize the `llm_output_adapter` method to specify the expected output format.
3. **Implement the Prompt Method** - Design the `prompt` method to define how the input will be structured for the LLM.

Example:

```ruby
class MyCustomGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string, name: "custom_output", description: "A description of what the output should be."

  def initialize(input_data)
    @input_data = input_data
  end

  def generate
    super
  end

  def prompt
    "Generate output for \\#{@input_data}"
  end
end
```

## Custom Actions

Actions allow you to perform specific tasks either before or after the LLM has generated its output.

### Creating a Custom Action

1. **Subclass the Base Action** - Your action class should inherit from `Sublayer::Actions::Base`.
2. **Implement the Call Method** - This is where the logic of your action goes.

Example:

```ruby
class MyCustomAction < Sublayer::Actions::Base
  def initialize(some_data)
    @some_data = some_data
  end

  def call
    # Action logic here
  end
end
```

## Custom Agents

Agents can be thought of as autonomous scripts that continuously perform specific tasks.

### Creating a Custom Agent

1. **Subclass the Base Agent** - Inherit from `Sublayer::Agents::Base`.
2. **Define Triggers and Steps** - Use `trigger`, `goal_condition`, `check_status`, and `step` to orchestrate how and when the agent acts.

Example:

```ruby
class MyCustomAgent < Sublayer::Agents::Base
  trigger_on_files_changed { ['/path/to/watch'] }

  goal_condition { @goal_met }
  
  check_status { @goal_met = true if some_condition }

  step { do_the_work }
end
```

## Contributing to the Community Repository

To contribute your custom components to the Sublayer community, follow these steps:

1. **Fork the Repository** - Start by forking the relevant Sublayer repository on GitHub.
2. **Add Your Component** - Implement your component as per the guides above.
3. **Create a Pull Request** - Once done, commit your changes and create a pull request explaining your component.

By sharing your custom components, you not only enhance your own projects but also help build a richer ecosystem for everyone.