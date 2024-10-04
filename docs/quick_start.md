---
title: "Quick Start"
nav_order: 2
---
# Quick Start

Sublayer is made up of three main concepts: Generators, Actions, and Agents. These concepts combine to create powerful AI-powered applications in a simple and easy-to-use interface.

You can think of a Sublayer Generator as an object that takes some string inputs and runs them through an LLM to generate some new string output.

In this enhanced guide, you'll learn how to set up a basic project using these concepts.

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

## Step 3 - Initialize a Project

Create a new directory for your project and move into it:

```shell
$ mkdir my_sublayer_project
$ cd my_sublayer_project
```

## Step 4 - Create a Generator

Create a Sublayer Generator. Generators take input from your application and generate output using an LLM like GPT-4.

Here's an example of a generator that takes a description of code to generate and the technologies to use:

```ruby
# ./code_from_description_generator.rb

require "sublayer"

module Sublayer
  module Generators
    class CodeFromDescriptionGenerator < Base
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
        """
        You are an expert programmer in \\#{@technologies.join(", ")}.

        You are tasked with writing code using these technologies: \\#{@technologies.join(", ")}.

        Task description: \\#{@description}
        """
      end
    end
  end
end
```

## Using Generators, Actions, and Agents

### Actions

Actions perform specific operations, like reading and writing files or making API calls. They provide input for generators or use the generated output.

Example:

```ruby
class WriteFileAction < Sublayer::Actions::Base
  def initialize(file_contents:, file_path:)
    @file_contents = file_contents
    @file_path = file_path
  end

  def call
    File.open(@file_path, 'wb') do |file|
      file.write(@file_contents)
    end
  end
end
```

### Agents

Agents are autonomous entities that perform tasks or monitor systems. They consist of a trigger, goal condition, status checks, and steps.

Example:

```ruby
class RSpecAgent < Sublayer::Agents::Base
  def initialize(implementation_file_path:, test_file_path:)
    @implementation_file_path = implementation_file_path
    @test_file_path = test_file_path
    @tests_passing = false
  end

  trigger_on_files_changed { [@implementation_file_path, @test_file_path] }
  goal_condition { @tests_passing }

  check_status do
    stdout, stderr, status = Sublayer::Actions::RunTestCommandAction.new(
      test_command: "rspec \\#{@test_file_path}"
    ).call

    @tests_passing = status.exitstatus == 0
  end

  step do
    modified_implementation = Sublayer::Generators::CodeFromDescriptionGenerator.new(
      description: "Modify this implementation to pass the tests.",
      technologies: ["ruby"]
    ).generate

    Sublayer::Actions::WriteFileAction.new(
      file_contents: modified_implementation,
      file_path: @implementation_file_path
    ).call
  end
end
```

## Next Steps

With a firm grasp of creating Generators, Actions, and Agents, you're ready to dive deeper into developing with Sublayer.

- Create additional [Actions]({% link docs/concepts/actions.md %}) to handle more complex tasks.
- Explore more [Examples]({% link docs/guides/index.md %}).
- Join our [Discord community](https://discord.gg/TvgHDNEGWa) for support and updates.
