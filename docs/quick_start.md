---
title: "Quick Start"
nav_order: 2
---
# Quick Start

Sublayer is made up of three main concepts: Generators, Actions, and Agents. These concepts combine to create powerful AI-powered applications in a simple and easy-to-use interface.

You can think of a Sublayer Generator as an object that takes some string inputs and runs them through an LLM to generate some new string output.

In this example, we'll create a simple generator that takes a description of code and the technologies to use and generates code using an LLM like GPT-4.

---

## Step 1 - Installation

Install the Sublayer gem:

```shell
$ gem install sublayer
```

Or add it to your Gemfile:

```ruby
gem "sublayer"
```

## Step 2 - Environment Setup

Set your OpenAI API key as an environment variable:

```shell
export OPENAI_API_KEY="your-api-key"
```

Don't have a key? Visit [OpenAI](https://openai.com/product) to get one.

## Step 3a - Create a Generator

Create a Sublayer Generator. Generators are responsible for taking input from your application and generating output using an LLM like GPT-4.

Here's an example of a generator that takes a description of code to generate and the technologies to use and generates code with an LLM:

```ruby
# ./code_from_description_generator.rb

require "sublayer"
...```

---

## CLI Commands Overview

The Sublayer CLI provides several commands to streamline your development process. Below is an overview of the available commands, derived from the `lib/sublayer/cli.rb` and its subcommands:

- **new**: Creates a new Sublayer project.
  ```shell
  sublayer new PROJECT_NAME
  ```
  This command helps set up a new Sublayer project with a specified name.

- **generate:generator**: Generates a new Sublayer Generator subclass for your project.
  ```shell
  sublayer generate:generator
  ```
  Used to scaffold a new generator class in your project.

- **generate:agent**: Generates a new Sublayer Agent subclass for your project.
  ```shell
  sublayer generate:agent
  ```
  Utility for adding agent automation capabilities to your project.

- **generate:action**: Generates a new Sublayer Action subclass for your project.
  ```shell
  sublayer generate:action
  ```
  Utilize this to create a new action that can perform tasks within your setup.

- **version**: Prints the Sublayer version.
  ```shell
  sublayer version
  ```
  Displays the current installed version of Sublayer.

- **help**: Provides help information for Sublayer commands.
  ```shell
  sublayer help
  ```
  Use this to get a summary of available commands or details about a specific command.

For specific flags or parameters and detailed command behavior, please refer to the Sublayer CLI documentation or use the `--help` option with commands.

---

## Step 3b - Try Generating One!

Try generating your own generator with our interactive code generator below:

...