---
title: Core Concepts
layout: default
nav_order: 3
has_children: true
permalink: /docs/concepts/
---

# Core Concepts

The framework is broken up into four core concepts: Generators, Actions, Agents, and Triggers. These concepts provide the foundational elements needed to create flexible and powerful AI-driven applications.

## Generators
Generators are responsible for creating specific outputs based on given input data. They are highly focused on a single generation task and exclude complex decision-making, thus serving as the fundamental building blocks of the Sublayer framework.

For example, consider a scenario where you need to generate Ruby code from a description. This would involve using:
- **[CodeFromDescriptionGenerator](/spec/generators/examples/code_from_description_generator.rb):** Generates code based on a provided description and technology stack.

[Explore More about Generators]({% link docs/concepts/generators.md %})

## Actions
Actions are defined tasks that help in acquiring required inputs for a Generator or performing an operation based on a Generator's output. Actions are akin to tools in other agent frameworks – simple, isolated operations that don’t involve complex logic.

### Example Actions:
- **[WriteFileAction](/lib/tddbot/sublayer/actions/write_file_action.rb):** Writes text to a specified file.

For details and further examples, continue to [Actions Documentation]({% link docs/concepts/actions.md %}).

## Agents
Think of Sublayer Agents as automated assistants tasked with repetitive but essential activities. From coding to system monitoring, agents are designed to respond to environmental changes through triggers. An agent possesses key elements like goal condition, status check, and operational steps.

### Example Agent:
- **[RSpecAgent](/spec/agents/examples/rspec_agent.rb):** An agent watching for test or file changes to ensure tests pass by altering the code logic.

Details on Agents are documented in [Agents Documentation]({% link docs/concepts/agents.md %}).

## Triggers
Triggers activate agents based on specific events or conditions, offering significant flexibility in agent operation. They can respond to file modifications, external inputs, time events, etc., making the automation process responsive and efficient.

### Example Trigger:
- **[FileChange](/lib/sublayer/triggers/file_change.rb):** Activates whenever specific files change.

Learn more about Triggers and their use cases [here]({% link docs/custom_components/triggers.md %}).

This enhanced understanding of Sublayer’s core components - Generators, Actions, Agents, and Triggers - equips you better in creating dynamic, AI-powered workflows in any compatible environment. Use the links to delve deeper into each concept.