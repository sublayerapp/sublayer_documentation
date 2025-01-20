---
title: "Quick Start"
nav_order: 2
---

# Quick Start

Sublayer is made up of three main concepts: Generators, Actions, and Agents. These concepts combine to create powerful AI-powered applications in a simple and easy-to-use interface.

You can think of a Sublayer Generator as an object that takes some string inputs and runs them through an LLM to generate some new string output.

In this example, we'll create a simple generator that takes a description of code and the technologies to use and generates code using an LLM like GPT-4.

***

### Step 1 - Installation

Install the Sublayer gem:

```shell
$ gem install sublayer
```

Or add it to your Gemfile:

```ruby
gem "sublayer"
```

### Step 2 - Environment Setup

Set your OpenAI API key as an environment variable:

```shell
export OPENAI_API_KEY="your-api-key"
```

Don't have a key? Visit [OpenAI](https://openai.com/product) to get one.

### Step 3 - Create a Generator

Here, we will show you how to create a simple script that utilizes the Sublayer framework:

```ruby
require "sublayer"

# Define a simple Generator
class SimpleGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string,
                     name: "message",
                     description: "A simple hello world message"

  def initialize
  end

  def generate
    super
  end

  def prompt
    <<-PROMPT
    Create a simple "Hello, World!" message in Ruby.
    PROMPT
  end
end

generator = SimpleGenerator.new
puts generator.generate
```

This code demonstrates the basic setup for a generator that will return a "Hello, World!" message.

### Next Steps

Now that you've created your first generator, you can:

* Create some [Actions]({% link docs/concepts/actions.md %}) to do something with whatever you've generated.
* Browse some [Examples]({% link docs/guides/index.md %}) to learn how to use the Sublayer gem in different types of projects.
* [Join our Discord](https://discord.gg/TvgHDNEGWa) to chat with us, for support, and to keep up with the latest updates.
