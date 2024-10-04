---
title: Core Concepts
nav_order: 3
has_children: true
---
# Core Concepts

The framework is structured around three core concepts: Generators, Actions, and Agents. Each plays a vital role in the ecosystem of Sublayer, allowing developers to create highly customizable AI-driven applications.

## Overview

* **Generators** are the building blocks responsible for generating outputs based on input data. They are specialized in single tasks, ensuring focused and efficient output generation.

* **Actions** perform specific tasks to either gather inputs for Generators or to utilize the outputs they generate. They make it possible to directly interact with external systems or data.

* **Agents** are autonomous entities designed to handle specific operations or system monitoring tasks, activated by specific triggers.

---
## Creating Custom Components

### Custom Generators
To create a custom generator, define a class inheriting from `Sublayer::Generators::Base` and specify the type of output with `llm_output_adapter`. Define the unique logic of the generator using the `prompt` method.

[More about Generators]({% link docs/concepts/generators.md %})

### Custom Actions
Actions can be created by subclassing `Sublayer::Actions::Base`. Implement the `call` method to perform the necessary action.

[More about Actions]({% link docs/concepts/actions.md %})

### Custom Agents
Create agents by subclassing `Sublayer::Agents::Base`. Define triggers using `trigger`, and implement task logic using `goal_condition`, `check_status`, and `step` methods.

[More about Agents]({% link docs/concepts/agents.md %})

---
## Core Components

Explore each component in detail:

* [Generators]({% link docs/concepts/generators.md %})
* [Actions]({% link docs/concepts/actions.md %})
* [Agents]({% link docs/concepts/agents.md %})
