---
title: Core Concepts
nav_order: 3
---
# Core Concepts

The framework is broken up into three core concepts: Generators, Actions, and Agents.

Browse the links below to go more in depth into each of these concepts:

* [Generators]({% link docs/concepts/generators.md %})
* [Actions]({% link docs/concepts/actions.md %})
* [Agents]({% link docs/concepts/agents.md %})

## Writing an Agent

The 'Writing an Agent' section explains the agent's components but lacks step-by-step code examples for creating an agent from scratch. Adding a complete example, including trigger definitions and method implementations, will illustrate the process better for developers unfamiliar with Sublayer.

Here's a simple example of how to create an agent using the Sublayer framework:

```ruby
class ExampleAgent < Sublayer::Agents::Base
  trigger { /* condition to activate agent */ }
  goal_condition { /* logic to define completion */ }
  check_status { /* logic to monitor progress */ }
  step { /* logic to progress towards goal */ }
end

ExampleAgent.new.run
```

In this example:
- `trigger` defines when the agent should be activated and begin execution.
- `goal_condition` specifies the criteria for the agent's task completion.
- `check_status` provides the mechanism to monitor ongoing progress towards the goal.
- `step` contains the actionable steps the agent takes in pursuit of the goal.

This structure allows for the creation of a flexible, event-driven agent capable of handling complex workflows and dynamic environments.

For more detailed guidance, consider exploring our [interactive agent generator](https://blueprints.sublayer.com/interactive-code-generator/sublayer-agents).

## Try generating your own agent:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-agents" width="100%" height="500px"></iframe>

## Examples:

- [RSpecAgent](https://github.com/sublayerapp/sublayer/blob/main/spec/agents/examples/rspec_agent.rb)
  - A Sublayer agent that is triggered any time a test file or an implementation file changes with a goal of making the tests pass. When one of the files changes, the status is checked by running the tests. If the tests are failing, the agent sends the tests and the implementation to an LLM (using a [Sublayer::Generator](/concepts/generators)) to generate a new implementation that should pass the tests.
