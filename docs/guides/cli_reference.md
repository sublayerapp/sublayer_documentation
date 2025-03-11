---
layout: default
title: CLI Reference
nav_order: 2
parent: Guides
permalink: /docs/guides/cli_reference/
---

# CLI Reference
<!-- This is the main title of the CLI reference page. -->

Sublayer offers a command line interface (CLI) that provides various commands to assist in managing and utilizing the framework efficiently.

## Table of Contents
<!-- This section will be auto-generated if has_toc is set to true in the front matter. -->

- [Command Overview](#command-overview)
- [Commands](#commands)
  - [generate:generator](#generategenerator)
  - [generate:agent](#generateagent)
  - [generate:action](#generateaction)
  - [version](#version)
  - [help](#help)

---

## Command Overview

Sublayer's CLI commands are designed to streamline your development process by generating boilerplate code and handling other routine tasks:

### Commands

#### generate:generator
- **Description**: Generates a new `Sublayer::Generator` subclass for your project.
- **Usage**: `sublayer generate:generator [OPTIONS]`
- **Options**:
  - `--description, -d` : Description of the generator you want to create.
  - `--provider, -p` : Specify an AI provider (OpenAI, Claude, or Gemini).
  - `--model, -m` : Specify an AI model name to use (e.g., gpt-4o).
- **Example**: 
  ```
  sublayer generate:generator --description "Generate translation code" --provider OpenAI --model gpt-4o
  ```

#### generate:agent
- **Description**: Generates a new `Sublayer::Agent` subclass for your project.
- **Usage**: `sublayer generate:agent [OPTIONS]`
- **Options**: 
  - `--description, -d` : Description of the agent you want to create.
  - `--provider, -p` : Specify an AI provider (OpenAI, Claude, or Gemini).
  - `--model, -m` : Specify an AI model name to use (e.g., gpt-4o).
- **Example**:
  ```
  sublayer generate:agent --description "Monitor file changes" --provider OpenAI --model gpt-4o
  ```

#### generate:action
- **Description**: Generates a new `Sublayer::Action` subclass for your project.
- **Usage**: `sublayer generate:action [OPTIONS]`
- **Options**:
  - `--description, -d` : Description of the action you want to create.
  - `--provider, -p` : Specify an AI provider (OpenAI, Claude, or Gemini).
  - `--model, -m` : Specify an AI model name to use (e.g., gpt-4o).
- **Example**:
  ```
  sublayer generate:action --description "Send email notification" --provider OpenAI --model gpt-4o
  ```

#### version
- **Description**: Prints the current version of Sublayer.
- **Usage**: `sublayer version`
- **Example**:
  ```
  sublayer version
  ```

#### help
- **Description**: Describes available commands or one specific command.
- **Usage**: `sublayer help [COMMAND]`
- **Example**:
  ```
  sublayer help generate:generator
  ```

---

This CLI reference should assist you in effectively using Sublayer’s command-line tools to maximize productivity and efficiency in managing your AI-powered Ruby applications.
