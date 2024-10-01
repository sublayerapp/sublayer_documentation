---
title: Agents
parent: Core Concepts
nav_order: 3
---
# Agents

Sublayer Agents serve as autonomous assistants designed to help with a variety of tasks, whether it's coding, data processing, or monitoring complex systems. They are built to react to changes in the environment through triggers and aim to fulfill a defined goal condition. Agents follow a continuous loop of checking their progress and executing steps until they achieve their goal.

Triggers for agents can be based on events like file changes, incoming data, time-based triggers, or manual activation. These agents work tirelessly, enhancing efficiency and responsiveness by automatically handling repetitive and complex tasks. They are particularly useful for automating workflows, monitoring, and processing within a flexible, event-driven architecture.

## Writing an Agent

To create an agent, you define four main components using the Domain Specific Language (DSL) provided by Sublayer:

- `trigger`: Defines what activates the agent, such as file modifications, time schedules, or specific webhook calls.
- `goal_condition`: Sets the criteria that determine when the task is complete.
- `check_status`: Continually evaluates the current state against the goal.
- `step`: Executes the logic required to move towards achieving the goal.

These components offer a structured yet flexible approach to define the functionality of agents, allowing them to perform a wide array of automated operations.

## Examples:

- [RSpecAgent](https://github.com/sublayerapp/sublayer/blob/main/spec/agents/examples/rspec_agent.rb)
  - This agent triggers when test or implementation files change, aiming to pass all tests. It checks the status by running tests, and if they fail, it collects test data and the implementation to suggest improvements through an LLM.

## Enhancements

With recent updates in the `lib/sublayer/cli/commands/agent.rb`, agents now support more sophisticated trigger setups and goal conditions, extending their applicability in complex scenarios. This expansion improves capabilities and scenarios where agents can be an effective tool.

## Developing Custom Agents

The flexibility of agents makes them suitable for a variety of scenarios in automation and monitoring. While standard functionalities cover common use cases, the ability to develop custom agents tailor-fit to specific requirements remains a core strength of the Sublayer framework.

For advanced use cases, developers can extend and customize agents by leveraging the comprehensive DSL and integrating them into larger Sublayer-based systems. This facilitates robust, scalable solutions tailored to unique operational needs.