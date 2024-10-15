---
title: Core Concepts
nav_order: 3
---

# Core Concepts

The Sublayer framework is intricately designed around four pivotal components: Generators, Actions, Agents, and Triggers. Each plays a critical role in the ecosystem and understanding them is key to leveraging Sublayer to its fullest.

Below, you can delve deeper into each of these concepts:

* [Generators]({% link docs/concepts/generators.md %})
* [Actions]({% link docs/concepts/actions.md %})
* [Agents]({% link docs/concepts/agents.md %})
* [Triggers]({% link docs/custom_components/triggers.md %})  <!-- Added link to Triggers under Core Concepts based on code repo details -->

## Generators
Generators are responsible for producing specific outputs from given inputs. Think of them as the fundamental building blocks that handle distinct generation tasks without any actions or complex decision-making.

## Actions
Actions are like the gears in a machine. They perform distinct operations either to provide necessary inputs for a Generator or to act on the outputs produced by a Generator. Actions remain straightforward, encapsulating individual tasks without delving into complex decisions.

## Agents
Agents act as the overseers, managing tasks that require continuous attention or automation. In the context of Sublayer, Agents can be likened to diligent managers that oversee various tasks, ensuring they proceed as planned. They determine the process through four main aspects: triggers (what initiates them), goal conditions (what they aim to achieve), status checks (how they track progress), and the specific steps they execute.

## Triggers
Triggers are the catalysts that activate Agents. They decide when an agent should initiate its task based on predefined signals, which could be anything from file changes to specific time intervals. Triggers ensure that tasks occur precisely when they are needed, adding dynamism and precision to automated processes in Sublayer.
