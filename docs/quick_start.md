---
title: "Quick Start"
nav_order: 2
---

# Quick Start

Sublayer is a versatile framework that revolves around three core components: Generators, Actions, and Agents. Each contributes to developing AI-powered applications with ease and clarity.

In the following guide, you will find a streamlined flow to get started with Sublayer, exploring setup processes and how to effectively utilize its components.

## Installation

Install the Sublayer gem:

```shell
$ gem install sublayer
```

Or add it to your application's Gemfile:

```ruby
gem "sublayer"
```

## Environment Setup

Ensure you have your OpenAI API key ready by setting it as an environment variable:

```shell
export OPENAI_API_KEY="your-api-key"
```

## Sublayer CLI Usage

Introducing the Sublayer CLI, a command-line interface to interact with the framework efficiently:

- Display the version:

```shell
$ sublayer version
```

- Initialize a new Sublayer project:

```shell
$ sublayer new my_project
```

- Generate a new Generator class:

```shell
$ sublayer generate:generator -d "A description for your generator"
```

These commands are designed to simplify creating and managing components within your Sublayer projects.

## Using Generators

Develop a simple generator. Generators require some input string and utilize an LLM to produce new outputs. For illustration:

```ruby
# Creating a generator
require "sublayer"

class CodeFromDescriptionGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string,
    name: "generated_code",
    description: "The generated code in the requested language"

  def initialize(description:, technologies:)
    @description = description
    @technologies = technologies
  end

  def generate
    super
  end

  def prompt
    <<-PROMPT
      You are an expert programmer in \\#{@technologies.join(", ")}. Your task...  
    PROMPT
  end
end
```

### Running the Generator

With the generator defined above, you can generate code snippets as follows:

```ruby
# Example use
require './code_from_description_generator'

config = { description: 'A hello world app', technologies: ['Ruby'] }
generator = CodeFromDescriptionGenerator.new(config)
puts generator.generate
```

For more on actions and agents, please visit:
- [Actions Guide](/docs/concepts/actions)
- [Agents Guide](/docs/concepts/agents)

Start building today and grow with Sublayer's robust framework.