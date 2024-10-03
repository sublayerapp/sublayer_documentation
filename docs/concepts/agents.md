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

## Trigger Functionality

Triggers are the mechanisms that "wake up" an agent and prompt it to perform its tasks. Triggers can respond to various types of events or conditions, such as file changes, incoming API requests, or scheduled time intervals.

### Examples of Trigger Usage:

1. **File Change Trigger**:
   - Activates when a specific file or set of files are modified.
   - Useful for scenarios like running tests when source code changes.

   ```ruby
   trigger_on_files_changed { ["example_file.txt"] }
   ```

2. **Time Interval Trigger**:
   - Calls the agent to act at specified time intervals.
   - Ideal for tasks that need periodic execution, like data backups.

3. **Custom Triggers**:
   - Sublayer allows for creating custom triggers tailored to specific needs.
   - For instance, activating an agent when a particular API endpoint is hit.

Explore the versatility of triggers to automate tasks seamlessly in Sublayer Agents.

## Try generating your own agent:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-agents" width="100%" height="500px"></iframe>

## Examples:

- [RSpecAgent](https://github.com/sublayerapp/sublayer/blob/main/spec/agents/examples/rspec_agent.rb)
  - A Sublayer agent that is triggered any time a test file or an implementation file changes with a goal of making the tests pass. When one of the files changes, the status is checked by running the tests. If the tests are failing, the agent sends the tests and the implementation to an LLM (using a [Sublayer::Generator](/concepts/generators)) to generate a new implementation that should pass the tests.