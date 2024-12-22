---
title: Creating and Managing Agents
parent: Guides
nav_order: 7
---
# Creating and Managing Agents

This guide walks you through the process of creating and managing agents using the Sublayer framework. Agents are crucial for automating tasks and responding to events within the framework. Here, we'll cover the basics, setting up a basic agent, creating custom triggers, and exploring advanced use cases.

## Introduction to Agents

Agents in Sublayer act as virtual assistants to automate repetitive tasks or handle specific events. By defining triggers, goal conditions, and steps, agents can effectively streamline workflows and enhance productivity.

### Key Concepts
- **Triggers**: Events that activate the agent, such as file changes or timed events.
- **Goal Condition**: The desired state the agent aims to achieve.
- **Check Status**: Regular evaluations to determine the agent's current progress.
- **Steps**: Actions the agent takes towards its goal.

## Setting up a Basic Agent

To set up an agent, you'll utilize Sublayer's Agent DSL. Here's an example of setting up a simple agent that responds to file changes:

```ruby
class MyAgent < Sublayer::Agents::Base
  trigger_on_files_changed { ['path/to/watch'] }

  goal_condition { @goal_reached }

  check_status do
    # Define logic to check if the goal is reached
  end

  step do
    # Define steps to achieve the goal
    @goal_reached = true
  end
end
```

## Creating Custom Triggers

Custom triggers allow you to define unique conditions under which an agent should activate. Here's a brief overview of creating a custom trigger:

```ruby
class MyCustomTrigger < Sublayer::Triggers::Base
  def initialize(custom_condition)
    @custom_condition = custom_condition
  end

  def setup(agent)
    # Logic to monitor the condition
    activate(agent) if @custom_condition.met?
  end
end

tag = MyCustomTrigger.new(some_condition)
```

Integrate this trigger with your agent by specifying it in the `trigger` method.

## Advanced Agent Use Cases

For more complex scenarios, agents can be combined with Generators and Actions to perform intricate tasks. Here's an example:

- **Automated Testing**: Run tests automatically when certain files change, and update code based on test results.
- **Data Processing**: Handle incoming data streams and process them efficiently.
- **System Monitoring**: Continuously check system metrics and trigger alerts when anomalies are detected.

Explore these advanced cases to leverage the full potential of agents in your workflow.