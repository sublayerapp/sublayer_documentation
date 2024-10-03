---
title: Core Concepts
nav_order: 3
---
# Core Concepts

The framework is broken up into three core concepts: Generators, Actions, and Agents.

- **Generators**: Responsible for creating output data based on input parameters.
  - Examples: `CodeFromDescriptionGenerator`, `DescriptionFromCodeGenerator`

- **Actions**: Perform specific operations, either as inputs for generators or operations based on generator outputs.
  - Examples: `WriteFileAction`, `RunTestCommandAction`

- **Agents**: Autonomous entities designed to perform tasks or monitor conditions.
  - Examples: `RSpecAgent`

## Additional Information

### AI Model Configuration

Understanding how to configure your AI models is crucial for effective deployment. For detailed guides on configuring different AI models for use in your Sublayer application, refer to the [Advanced Config](/docs/advanced_config.md) section.

Each configuration type—whether OpenAI, Anthropic, or Google—offers unique models suited to various advanced AI tasks. 

* [Generators]({% link docs/concepts/generators.md %})
* [Actions]({% link docs/concepts/actions.md %})
* [Agents]({% link docs/concepts/agents.md %})