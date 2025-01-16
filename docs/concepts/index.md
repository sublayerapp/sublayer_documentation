---
title: Core Concepts
nav_order: 3
layout: default
has_children: true
has_toc: true
---

# Core Concepts

The framework is broken up into three core concepts: Generators, Actions, and Agents. These components work collaboratively to enable building AI-powered applications.

## Table of Contents
- [Generators](#generators)
- [Actions](#actions)
- [Agents](#agents)

---

## Generators

Generators are responsible for producing specific outputs based on given input data. They focus on a single generation task without performing any actions or complex decision-making.

### Functionality
- **Input:** Receives data that must be transformed into a desired output.
- **Output:** Produces results based on the input and LLM processing.

### See also:
* [Example Generators]({% link docs/concepts/generators.md %})

---

## Actions

Actions are operations that either acquire inputs for a Generator or perform tasks based on a Generator's outputs. Think of actions as tools: simple commands that perform specific tasks.

### Functionality
- **Operation:** Interacts with either external systems or internal pipelines to collect or affect data.

### See also:
* [Explore Actions]({% link docs/concepts/actions.md %})

---

## Agents

Agents are like personal assistants designed to perform repetitive tasks or respond to changes in the environment. They can automate workflows, monitor systems, or process data based on predefined rules.

### Functionality
- **Triggers:** Conditions that activate the agent.
- **Goals:** Define what the agent is trying to achieve.

### See also:
* [Agent Examples]({% link docs/concepts/agents.md %})