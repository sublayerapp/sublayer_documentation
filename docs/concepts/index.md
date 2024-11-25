---
title: Core Concepts
nav_order: 3
---
# Core Concepts

The framework is broken up into four core concepts: Generators, Actions, Agents, and Triggers.

Browse the links below to go more in depth into each of these concepts:

* [Generators]({% link docs/concepts/generators.md %})
* [Actions]({% link docs/concepts/actions.md %})
* [Agents & Triggers]({% link docs/concepts/agents_triggers.md %})

## Agents & Triggers

Agents and Triggers are pivotal to the Sublayer framework, enabling automation and event-driven logic.

### Agents

Think of Sublayer Agents as your personal assistants, always ready to help with repetitive tasks or respond to changes in your environment. These agents can assist with a wide range of activities, from coding to data processing to system monitoring and beyond. You create an agent by defining four key aspects: what should wake it up (triggers), what it's trying to achieve (goal condition), how it checks its progress (check status), and what it actually does (step).

**Example**

- [RSpecAgent](https://github.com/sublayerapp/sublayer/blob/main/spec/agents/examples/rspec_agent.rb): This agent is triggered whenever a test file or an implementation file changes with a goal of making the tests pass. If the tests are failing, the agent sends the tests and the implementation to an LLM to generate a new implementation that should pass the tests.

### Triggers

Triggers determine when an agent performs its tasks, based on various events or conditions such as changes in files or time intervals. You can create custom triggers to drive unique agent behaviors.

**Example**

- [FileChange](https://github.com/sublayerapp/sublayer/blob/main/lib/sublayer/triggers/file_change.rb): Activates an agent when a file is modified.

This combination helps in automating workflows, monitoring systems, or processing data efficiently.