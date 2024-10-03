---
title: Creating Custom Components
description: A comprehensive guide to creating custom generators, actions, and agents in the Sublayer framework.
nav_order: 2
parent: Guides
---

# Creating Custom Components

In Sublayer, you can extend the framework by creating your own custom Generators, Actions, and Agents. This consolidated guide will walk you through the steps needed to build these components from scratch. 

## Creating Custom Generators

Generators in Sublayer are responsible for processing input data and generating output using AI models.

### Step-by-Step Guide to Building a Generator

1. **Define your Generator Class:** Inherit from `Sublayer::Generators::Base`.
2. **Specify Output Adapter:** Define the output format using `llm_output_adapter`.
3. **Initialize with Input Data:** Set up the initializer to receive input data.
4. **Create a prompt method:** Compile the prompt that will be sent to the AI model.

Here's an example:

```ruby
class MyCustomGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string, name: "generated_output", description: "The generated output description."

  def initialize(input_data)
    @input_data = input_data
  end

  def generate
    super
  end

  def prompt
    <<-PROMPT
      Your task is to generate an output based on the following input: #{@input_data}.
    PROMPT
  end
end
```

## Creating Custom Actions

Actions perform specific tasks such as sending data to an external API or saving files.

### Step-by-Step Guide to Building an Action

1. **Define your Action Class** - Inherit from `Sublayer::Actions::Base`.
2. **Initialize with Necessary Data**: Initialize the action with parameters it needs.
3. **Implement the Call Method**: Define what happens when the action is executed.

Here's an example:

```ruby
class MyCustomAction < Sublayer::Actions::Base
  def initialize(data)
    @data = data
  end

  def call
    # Perform some action with @data
  end
end
```

## Creating Custom Agents

Agents autonomously monitor and interact with the environment, based on user-defined triggers.

### Step-by-Step Guide to Building an Agent

1. **Define your Agent Class** - Inherit from `Sublayer::Agents::Base`.
2. **Specify Triggers** - Define what conditions will trigger the agent to act.
3. **Set Goal Conditions** - Define the goals for when the agent should stop acting.
4. **Implement Monitor and Actions**: Define how the agent should check its status and perform actions.

Here's an example:

```ruby
class MyCustomAgent < Sublayer::Agents::Base
  trigger_on_files_changed { ['my_file.txt'] }

  goal_condition { @task_complete }

  check_status do
    @task_complete = check_some_condition
  end

  step do
    perform_action
  end
end
```
