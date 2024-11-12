---
layout: default
title: Project Structure
nav_order: 2
---

# Project Structure

Understanding the layout of a project is crucial for efficient navigation and contribution. This section provides an overview of the key directories within the 'lib/sublayer' folder and their respective purposes.

## Purpose of Key Directories and Files

Below is a breakdown of the main components under the 'lib/sublayer' directory:

- **actions/**: Contains classes responsible for specific tasks that either fetch inputs for Generators or use their output for various operations. Examples include `WriteFileAction` which writes generated content to a file.
- **agents/**: This directory includes classes that define autonomous entities known as Agents. They perform specific tasks or monitor systems, such as running tests when files change.
- **cli/**: Holds the implementation of the command-line interface, handling command definitions and execution logic.
- **components/**: Stores modular and reusable components like output adapters that manage AI-generated content format and structure.
- **generators/**: Contains classes that manage the generation of outputs based on given inputs and LLM (Large Language Model) tasks, defining the foundational building blocks of Sublayer.
- **logging/**: Includes various logging mechanisms to track framework operations and outputs, aiding in debugging and audit processes.
- **providers/**: Encompasses classes that handle interactions with different LLM providers, making changes where necessary to accommodate various AI models.
- **tasks/**: Scripts for orchestrating more complex sequences of Actions and Generators to achieve broader goals.
- **triggers/**: Features subclasses that define events causing Agents to take action, such as file modifications.

This structure is designed to maintain a clear separation of concerns, facilitating development, testing, and extension of the framework.

## Framework Overview

Explore more about the core concepts of the framework in the following sections:

- [Generators](concepts/generators.md)
- [Actions](concepts/actions.md)
- [Agents](concepts/agents.md)

Incorporating these details into your understanding will streamline your contribution process and development effectiveness.