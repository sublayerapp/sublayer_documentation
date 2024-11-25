---
title: Agents & Triggers
parent: Core Concepts
nav_order: 3
---

# Agents

Think of Sublayer Agents as your personal assistants, always ready to help with repetitive tasks or respond to changes in your environment. These agents can assist with activities from coding to data processing to system monitoring. You define an agent by setting its trigger, goal condition, progress check, and execution steps.

### Core Functions
- **Trigger**: Determines what starts the agent. It can be file changes, incoming data, etc.
- **Goal Condition**: What the agent aims to achieve.
- **Check Status**: How the agent evaluates its progress.
- **Step**: The actionable tasks the agent performs toward its goal.

### Examples of Agents

- **RSpecAgent**: This agent runs whenever a test file or implementation file changes. Its goal is to make the tests pass by modifying the code using outputs from an LLM.

# Triggers

Triggers are mechanisms that activate agents based on certain conditions or events, offering flexibility in agent operation. By defining custom triggers, you can tailor agent responses precisely.

### Key Examples

- **FileChange**: Activates agents when specific files are changed.
- **TimeInterval**: Activate based on a scheduled time interval, useful for periodic tasks.

In combination, agents and triggers allow for automated, efficient handling of complex tasks, enhancing productivity and responsiveness.