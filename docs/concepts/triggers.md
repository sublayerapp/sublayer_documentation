---
title: Triggers
parent: Core Concepts
nav_order: 4
has_children: false
has_toc: true
---

# Triggers

Triggers are a core component within Sublayer Agents, dictating when certain actions occur based on specific conditions. They enable the dynamic activation of Agents to respond swiftly to environmental changes.

## How Triggers Function

- **Activation Mechanism:** Triggers serve as the condition-checking system within an Agent, ensuring activities are only commenced when predefined criteria are met.
- **Flexible Configurations:** By defining custom triggers, developers can tailor Agents to meet unique operational needs.

## Custom Trigger Creation and Examples

Developers can create custom triggers to address specific scenarios where built-in triggers don't suffice:

- **FileChange Trigger:** Activates an Agent when a specified file undergoes modifications.
- **TimeInterval Trigger:** Triggers activities at regular time intervals, such as scheduling tasks for periodic execution.
- **HTTP Trigger:** Configures Agents to respond to incoming HTTP requests, facilitating integration with web hooks or APIs.

## Building Custom Triggers

1. **Define Trigger Logic:** Establish the conditions and criteria for trigger activation within your application context.
2. **Integrate with Agent:** Seamlessly incorporate the trigger logic into existing Agents by leveraging Sublayer's flexible framework.
3. **Execute and Monitor:** Upon setup, ensure that triggers execute as intended, actively monitoring behavior and adjusting logic as necessary.

With triggers, applications gain the ability to react instantaneously to internal and external factors, driving automated processes and improving responsiveness.