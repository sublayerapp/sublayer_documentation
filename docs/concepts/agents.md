---
title: Agents
parent: Core Concepts
nav_order: 3
---

# Agents

Think of Sublayer Agents as your personal assistants, always ready to help with repetitive tasks or respond to changes in your environment. These agents can assist with a wide range of activities, from coding to data processing to system monitoring and beyond. You create an agent by defining four key aspects: what should wake it up (triggers), what it's trying to achieve (goal condition), how it checks its progress (check status), and what it actually does (step).

Triggers could be things like file changes, incoming data, time-based events, or even manual calls while the goal might be completing a data analysis or updating a system. The agent will keep checking its status and taking steps until it reaches its goal. It's like having a tireless helper that knows exactly when to jump in and what to do, making a variety of processes more efficient and responsive to change. Whether you're automating workflows, monitoring systems, or processing data, Sublayer Agents provide a flexible, event-driven approach to tackling complex and repetitive tasks.

## Writing an Agent

Sublayer Agents are autonomous units of execution designed to perform specific tasks or monitor systems. They are built on top of the `Sublayer::Agents::Base` class and utilize a Domain Specific Language (DSL) for defining their behavior.

The DSL consists of four primary methods:

- `trigger`: Specifies events that activate the agent (e.g., file changes, time-based events, webhooks, etc.)
- `goal_condition`: Defines the criteria for task completion
- `check_status`: Evaluates the current state of the task
- `step`: Implements the actual logic to be executed

These methods work in concert to create a flexible, event-driven system for automating complex workflows and responding to changes in various environments.

## Best Practices

Here are some best practices to consider when working with Sublayer Agents:

- **Modularization**: Break down your agents into smaller, reusable components, making them easier to maintain and understand.
- **Error Handling**: Implement comprehensive error handling to manage potential issues gracefully.
- **Logging**: Use logging to track the behavior and performance of your agents, aiding in debugging and analysis.

## Common Pitfalls

Be aware of these common pitfalls when developing agents:

- **Overcomplicating Logic**: Keep the logic simple and focused on specific tasks to enhance readability and maintainability.
- **Inefficient Triggers**: Ensure triggers are designed efficiently to prevent unnecessary execution and resource consumption.

## Advanced Agent Features

Explore these advanced features to enhance your agent capabilities:

- **Custom Triggers**: Create custom triggers to extend the functionality and adaptability of your agents.
- **Integration with External API**: Utilize external APIs to expand the operational scope and utility of your agents.

## Try generating your own agent:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-agents" width="100%" height="500px"></iframe>

## Examples:

- [RSpecAgent](https://github.com/sublayerapp/sublayer/blob/main/spec/agents/examples/rspec_agent.rb)
  - A Sublayer agent that is triggered any time a test file or an implementation file changes with a goal of making the tests pass. When one of the files changes, the status is checked by running the tests. If the tests are failing, the agent sends the tests and the implementation to an LLM (using a [Sublayer::Generator](/concepts/generators)) to generate a new implementation that should pass the tests.

## Troubleshooting

For troubleshooting common issues with Agents and more information, please visit our [Troubleshooting Guide]({% link docs/troubleshooting.md %}).