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

## How Components Cooperate

1. **Generators**: Focused on data transformation by generating outputs without complex decision-making capabilities.

2. **Actions**: Perform operations outside of data transformation: data retrieval, file writing, etc. Typically used in conjunction with generators for data pre and post-processing.

3. **Agents**: Autonomous units that execute tasks or monitor systems using generators and actions, triggered by conditions like file changes or time intervals.

### Example Showcase

A task involving an action extracting data, a generator transforming it, and an agent handling the execution based on triggers would clarify the workflow.