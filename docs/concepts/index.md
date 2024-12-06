---
title: Core Concepts
nav_order: 3
---
# Core Concepts

The framework is broken up into three core concepts: Generators, Actions, and Agents.

## Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

### Lifecycle of a Generator
- **Initiation**: A generator is set up with a specific task and context. Inputs are defined, which will guide its output.
- **Execution**: When invoked, the generator processes its inputs using the logic defined, possibly interacting with AI models to refine its output.
- **Conclusion**: The generator produces a completed output, which is then available for further processing or action.

## Actions

Actions perform specific operations to either get inputs for a Generator or use the generated output from a Generator. Actions do not involve complex decision making.

### Lifecycle of an Action
- **Initiation**: An action is created with a defined goal, usually associated with processing data or interfacing with external systems.
- **Execution**: The action carries out its task, which may involve file operations, API calls, or processing data.
- **Conclusion**: Results from the action are finalized, ready to be used by other components or further actions.

## Agents

Agents are autonomous units that perform tasks based on certain triggers and goals, leveraging Generators and Actions in their workflow.

### Lifecycle of an Agent
- **Initiation**: An agent is configured with specific triggers, goals, and steps to achieve its objectives.
- **Execution**: The agent actively monitors for its trigger conditions and takes defined steps towards its goals when conditions are met.
- **Conclusion**: Upon achieving its goal, the agent completes its cycle, possibly resetting its state to start again or finalizing the process.

Each section below explains in detail how these components collaborate and function:

* [Generators]({% link docs/concepts/generators.md %})
* [Actions]({% link docs/concepts/actions.md %})
* [Agents]({% link docs/concepts/agents.md %})