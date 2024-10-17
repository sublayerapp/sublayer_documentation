---
title: "Quick Start"
nav_order: 2
---
# Quick Start

In this guide, we'll walk through creating a complete Sublayer project from scratch. This example-driven approach will help you understand each step involved in setting up, configuring, and running your Sublayer project efficiently.

## Overview

This walkthrough will cover:

- Setting up your development environment
- Initializing a new Sublayer project
- Configuring AI models
- Creating Generators and Actions
- Running your project
- Debugging and optimizing performance

---

## Step 1: Installation

Start by installing the Sublayer gem:

 ```shell
 $ gem install sublayer
 ```

Or add it to your Gemfile:

```ruby
gem "sublayer"
```

## Step 2: Environment Setup

Set your OpenAI API key as an environment variable:

 ```shell
 export OPENAI_API_KEY="your-api-key"
 ```

Don't have a key? Visit [OpenAI](https://openai.com/product) to get one.

## Step 3: Initialize a New Project

Create a new directory for your project and navigate into it:

```shell
$ mkdir my_sublayer_project && cd my_sublayer_project
```

Initialize a new Sublayer project:

```shell
$ sublayer new_project MySublayerApp
```

Navigate into the project directory:

```shell
$ cd MySublayerApp
```

## Step 4: Configure Your AI Model

Open the configuration file and specify your AI model:

```ruby
Sublayer.configuration.ai_model = "gpt-4o"
```

## Step 5: Create a Generator

Create a simple Generator that generates a greeting message:

```ruby
# ./lib/generators/greeting_generator.rb
require "sublayer"

module Sublayer
  module Generators
    class GreetingGenerator < Base
      llm_output_adapter type: :single_string,
                         name: "greeting_message",
                         description: "A personalized greeting message"

      def initialize(name:)
        @name = name
      end

      def generate
        super
      end

      def prompt
        "Create a greeting message for \\#{@name}."
      end
    end
  end
end
```

## Step 6: Create an Action

Define an Action that writes the generated greeting to a file:

```ruby
# ./lib/actions/write_greeting_action.rb
require "fileutils"

module Sublayer
  module Actions
    class WriteGreetingAction < Base
      def initialize(message:, file_path: "./greeting.txt")
        @message = message
        @file_path = file_path
      end

      def call
        File.write(@file_path, @message)
      end
    end
  end
end
```

## Step 7: Run Your Project

Invoke the generator and action in a script to automate the tasks:

```ruby
# ./run.rb
require_relative './lib/generators/greeting_generator'
require_relative './lib/actions/write_greeting_action'

name = "Alice"
greeting = Sublayer::Generators::GreetingGenerator.new(name: name).generate
Sublayer::Actions::WriteGreetingAction.new(message: greeting).call
puts "Greeting written to file."
```

Run your script:

```shell
$ ruby run.rb
```

## Step 8: Debug and Optimize

### Debugging

If you encounter issues, check:
- Your API key is set correctly
- Your configuration matches the required format
- Your generator and action files are being loaded correctly

### Optimizing

To optimize performance, ensure your project dependencies are minimal and only include the necessary libraries.

For more detailed guidance, visit our [Troubleshooting Guide](../troubleshooting.md).

---

This example provides a simple walkthrough for setting up and running a Sublayer project. As you grow more comfortable, you can explore more advanced features like integrating external APIs or implementing custom generators and actions. Feel free to visit our [Documentation Overview](/docs/overview/) for further exploration into Sublayer's capabilities.