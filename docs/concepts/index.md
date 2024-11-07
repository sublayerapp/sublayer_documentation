---
title: Core Concepts
nav_order: 3
has_children: true
has_toc: true
permalink: /docs/concepts/index/
---

# Core Concepts

The framework is broken up into three core concepts: Generators, Actions, and Agents.

## Overview

To effectively use the Sublayer framework, it's important to understand each component's role. This section will cover the purpose of Generators, Actions, and Agents, and how they integrate with each other. Visual aids like flowcharts are included to help convey these concepts.

## Generators

Generators are responsible for creating specific outputs from input data. Consider them as the initial step in the workflow, focused solely on the task of generating required data without executing any actions or decisions.

### When to use Generators?
- When you need to produce content or data based on inputs.
- Ideal for operations requiring pure generation without side effects.

### Generator Workflow
![Generator Workflow](images/generator_workflow.png)

A generator takes in structured data and outputs a refined product, which can be consumed by Actions or Agents.

### Examples
- Code generation from a description.
- Content creation templates.

## Actions

Actions execute defined operations, using the outputs from Generators or performing tasks to supply input data for Generators. They act as the operational units of the framework.

### When to use Actions?
- When data needs to be fetched, saved, or transformed in a specific manner.
- Perfect for operations requiring detailed, step-by-step processing.

### Actions Workflow
![Actions Workflow](images/actions_workflow.png)

Actions receive input data, process it, and provide results that can trigger further operations.

### Examples
- File writing with generated content.
- API calls to fetch additional data.

## Agents

Agents are designed to automate tasks, monitor conditions, and perform continuous operations. They combine Generators and Actions to form complete workflows.

### When to use Agents?
- Ideal for tasks that require constant monitoring and dynamic responses.
- When workflows need to be automated end-to-end.

### Agents Workflow
![Agents Workflow](images/agents_workflow.png)

Agents incorporate both Generators and Actions but operate autonomously to meet defined goals.

### Examples
- Automated testing and response systems.
- Continuous integration and deployment tasks.

## Comparison Table

| Feature   | Generators              | Actions                | Agents                       |
|-----------|-------------------------|------------------------|------------------------------|
| Purpose   | Generate data/outputs  | Perform operations     | Automate tasks               |
| Usage     | Data/input to output   | Execute tasks          | Combine Generators & Actions |
| Autonomy  | Manual input/output    | Manual execution       | Autonomous operation         |

For more details, refer to [Generators Guide](/docs/concepts/generators.md), [Actions Guide](/docs/concepts/actions.md), and [Agents Guide](/docs/concepts/agents.md).