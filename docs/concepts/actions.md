---
title: Actions
parent: Core Concepts
nav_order: 2
has_children: false
has_toc: true
---

# Actions

Actions serve as the executable units in Sublayer, performing specific tasks either to prepare inputs for Generators or to process Generator outputs. They can effectively transfer data between different stages of a workflow and initiate external processes.

## Writing and Using Actions

Actions are designed to be single-purpose and devoid of complex decision-making. They adapt easily to different scenarios, allowing for diverse applications.

## Examples of Actions

Explore how Actions can be utilized in various scenarios:

- **WriteFileAction:** A straightforward action that saves text to a specified file location.
- **RunTestCommandAction:** Executes a command-line test suite, capturing output for further analysis.
- **SpeechToTextAction:** Converts audio data into text using speech recognition services from AI providers.
- **TextToSpeechAction:** Transforms text data into audio, empowering applications with voice synthesis capabilities.

## Creating Your Own Action

1. **Define the Task:** Identify a specific task that can be broken down into a reusable action.
2. **Implement Action Logic:** Write the code to execute your task with external systems or data transformations.
3. **Integration:** Seamlessly integrate your Actions within the Sublayer ecosystem, leveraging existing infrastructure.

By following these principles, you can efficiently deploy Actions to automate and streamline workflows, making your projects more responsive and capable.