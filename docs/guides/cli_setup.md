---
layout: default
title: CLI Setup
parent: Guides
nav_order: 4
---

# Setting up the Sublayer CLI

This guide will walk you through setting up and using the Sublayer CLI tool to initialize a new CLI project.

## Prerequisites

Before you begin, ensure you have the following installed:

- **Ruby** (version 2.6 or later)
- **Sublayer gem**

Install the Sublayer gem:

```bash
$ gem install sublayer
```

## Initializing a New Project

To start a new CLI project with Sublayer:

1. Create a new directory for your project:
   ```bash
   $ mkdir my_new_cli_project
   $ cd my_new_cli_project
   ```

2. Generate a new project:
   ```bash
   $ sublayer new your_project_name --template cli
   ```

   This command sets up a new CLI project with the necessary files and dependencies.

## Basic Usage

Now that you have set up a new project, you can start creating commands and actions:

- **Create a Command**: Generate a command that your CLI tool will support.
  ```bash
  $ sublayer generate:command ExampleCommand
  ```

- **Create an Action**: Define actions that dictate the business logic of your CLI.
  ```bash
  $ sublayer generate:action MyAction
  ```

## Running Your CLI Tool

To run your CLI application:

```bash
$ bin/your_project_name example_command
```

This will execute the `example_command` within your CLI application.