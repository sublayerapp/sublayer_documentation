---
title: Agents
parent: Core Concepts
nav_order: 3
has_toc: true
---

# Agents
Sublayer Agents act as intelligent assistants ready to automate repetitive tasks or respond to specific changes in your environment.

## Overview
Agents operate by defining triggers that wake them up, goals they aim to achieve, and the steps they take to reach those goals.

## Writing an Agent
Agents are constructed using the `Sublayer::Agents::Base` class, employing a domain-specific language (DSL) to set triggers, goals, status checks, and actions.

- `trigger`: Defines events that initiate the agent, such as file changes or time events.
- `goal_condition`: Outlines what success looks like for task completion.
- `check_status`: Monitors the task's current state.
- `step`: Executes the required logic.

## Examples
- [RSpecAgent](https://github.com/sublayerapp/sublayer/blob/main/spec/agents/examples/rspec_agent.rb): An agent for running tests upon file changes and modifying code to make tests pass.

## Troubleshooting
See our troubleshooting page for common issues and solutions.
- [Troubleshooting Guide](/docs/troubleshooting)