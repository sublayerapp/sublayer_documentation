---
layout: default
title: CLI Commands
nav_order: 7
---

# CLI Commands

This document provides a detailed list of all available command-line interface (CLI) commands available in the Sublayer framework. Understanding these commands will enable you to effectively interact with the framework and streamline your development workflow.

## Table of Contents

- [Available CLI Commands](#available-cli-commands)
- [Commonly Used Commands](#commonly-used-commands)
- [Command Impact on Development](#command-impact-on-development)

---

## Available CLI Commands

### Initial Setup

- **`sublayer new PROJECT_NAME`**
  - **Description**: Creates a new Sublayer project.
  - **Usage**: `sublayer new my_project`

- **`sublayer generate:action`**
  - **Description**: Generates a new Sublayer Action subclass for your project.
  - **Usage**: `sublayer generate:action --description "Perform this action"`

- **`sublayer generate:agent`**
  - **Description**: Generates a new Sublayer Agent subclass for your project.
  - **Usage**: `sublayer generate:agent --description "Monitor this and do that"`

### Project Management

- **`sublayer generate:generator`**
  - **Description**: Generates a new Sublayer Generator subclass for your project.
  - **Usage**: `sublayer generate:generator --description "Generate something"`

- **`sublayer version`**
  - **Description**: Prints the current Sublayer version.
  - **Usage**: `sublayer version`

- **`sublayer help [COMMAND]`**
  - **Description**: Displays help information for Sublayer commands.
  - **Usage**: `sublayer help generate:action`

## Commonly Used Commands

- **Creating a New Project**
  - **Command**: `sublayer new PROJECT_NAME`
  - **Purpose**: Quickly set up a new project structure, including all necessary directories and configuration files.

- **Generating Code**
  - **Command**: `sublayer generate:generator`
  - **Purpose**: Simplifies the creation of code generators tailored to specific tasks within your project.

## Command Impact on Development

Using these CLI commands effectively integrates generative AI functionalities into your project, boosting efficiency and productivity. They allow seamless scaffolding, extension, and customization of Sublayer projects, thereby accelerating development cycles and improving project management.