---
title: Tasks
parent: Core Concepts
nav_order: 4
---

# Tasks

Tasks in the Sublayer framework serve as units of work that can involve multiple actions and are designed to achieve specific programming goals by leveraging both Generators and Actions.

## Purpose of Tasks

In the context of the Sublayer framework, a task automates a sequence of steps to accomplish a piece of work. Tasks use the results of Generators to update or create content, and they often involve a series of actions to bring a change in the state of a system.

## Integration with Actions and Generators

Tasks are orchestrated by using Generators to obtain specific output based on input data, and Actions to execute operations in the external environment, such as writing to files or invoking external APIs.

This integration allows for creating automated workflows that can generate, modify, and verify code or other resources automatically based on defined rules.

## Examples of Tasks

- **MakeRspecTestsPassTask**: This task attempts to make a set of RSpec tests pass by iterating over implementation files, using Generators to modify code based on test output, and Actions to run tests and update files.

Tasks are crucial for building advanced automations in your projects, letting you focus on higher-level orchestration and decision-making while leveraging lower-level Generators and Actions for execution.

For more detailed examples and advanced usage, consider exploring the repository or related documentation on orchestrating Tasks with Agents and Triggers.
