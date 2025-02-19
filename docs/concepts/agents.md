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

## Creating and Managing Agents

### Creating an Agent

To create an agent, you start by defining its primary components:

1. **Define the Trigger**: Determine what events will initiate the agent's processes. For example, you might want an agent to activate when a specific file is edited or when a certain time of day is reached.

   Example:

   ```ruby
   trigger_on_files_changed { ['lib/my_class.rb', 'spec/my_class_spec.rb'] }
   ```

2. **Set the Goal Condition**: Establish the condition that signifies the agent's task is complete. This could be as simple as verifying all tests pass.

   Example:

   ```ruby
   goal_condition { @tests_passing }
   ```

3. **Check Status**: Implement a method to check the current status or progress towards the goal. This might involve running a series of tests or queries.

   Example:

   ```ruby
   check_status do
     stdout, stderr, status = Open3.capture3("rspec")
     @tests_passing = (status.exitstatus == 0)
   end
   ```

4. **Define the Step Logic**: Create the steps the agent will take to progress towards its goal, such as modifying code or performing calculations.

   Example:

   ```ruby
   step do
     # Logic to modify code to address test failures
   end
   ```

### Managing Agents

Managing agents involves monitoring their activity and making adjustments as necessary to ensure they continue to function effectively.

- **Logging and Monitoring**: Ensure agents have adequate logging to trace their activities and diagnose issues.
- **Scaling**: Consider how agents can be scaled depending on the workload, such as distributing across multiple systems.
- **Configuration**: Make sure agents are configurable to suit various environments and conditions without code changes.

## Try generating your own agent:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-agents" width="100%" height="500px"></iframe>

## Examples:

- [RSpecAgent](https://github.com/sublayerapp/sublayer/blob/main/spec/agents/examples/rspec_agent.rb)
  - A Sublayer agent that is triggered any time a test file or an implementation file changes with a goal of making the tests pass. When one of the files changes, the status is checked by running the tests. If the tests are failing, the agent sends the tests and the implementation to an LLM (using a [Sublayer::Generator](/concepts/generators)) to generate a new implementation that should pass the tests.

## Troubleshooting

For troubleshooting common issues with Agents and more information, please visit our [Troubleshooting Guide]({% link docs/troubleshooting.md %}).