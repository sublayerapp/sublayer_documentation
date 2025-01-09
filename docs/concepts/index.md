---
title: Core Concepts
nav_order: 3
has_children: true
has_toc: true
---

# Core Concepts

Sublayer's architecture revolves around several core components, each playing a critical role in building AI-powered applications. This section provides an overview and detailed examples of each core concept along with how they can be customized.

## Generators

Generators focus on producing specific outputs based on provided inputs. They do not perform actions or make decisions, but are essential for creating content within the Sublayer framework.

- **Example:** A generator might take a textual description and generate corresponding Ruby code.
- **Customization:** Generators can be tailored to work with various AI models, allowing a wide range of use cases.

## Actions

Actions are operations executed either to gather inputs for a Generator or based on the generated outputs.

- **Example:** Using a `WriteFileAction`, you can save generated text to a file, or with `RunTestCommandAction`, you can execute tests based on generated code.
- **Customization:** Create new Actions to perform specific tasks like API calls or database updates.

## Agents

Agents are designed to automate tasks or respond to specific conditions, utilizing Generators and Actions as building blocks.

- **Example:** An Agent might be programmed to monitor system logs and trigger alerts when anomalies are detected.
- **Triggers:** Agents can be activated by events like file changes or time intervals.

## Triggers

Triggers activate Agents based on predefined conditions, enabling responsive and dynamic operations.

- **Example:** A file change trigger can activate an Agent whenever a log file is updated.
- **Customization:** Define your own triggers to suit specific operational needs.

Explore the detailed documentation of each component to fully harness the power of Sublayer's modular architecture.