---
title: "Quick Start"
nav_order: 2
---
# Quick Start

Sublayer is made up of three main concepts: Generators, Actions, and Agents. These concepts combine to create powerful AI-powered applications in a simple and easy-to-use interface.

You can think of a Sublayer Generator as an object that takes some string inputs and runs them through an LLM to generate some new string output.

In this complete example, we'll create a simple generator that takes a description of code and the technologies to use, generates code using an LLM like GPT-4, executes some actions, and utilizes an agent.

---

## Comprehensive Example

### Installation

Install the Sublayer gem:

```shell
$ gem install sublayer
```

Or add it to your Gemfile:

```ruby
gem "sublayer"
```

### Environment Setup

Set your OpenAI API key as an environment variable:

```shell
export OPENAI_API_KEY="your-api-key"
```

Don't have a key? Visit [OpenAI](https://openai.com/product) to get one.

### Step 1 - Create a Generator

Create a Sublayer Generator. Generators are responsible for taking input from your application and generating output using an LLM like GPT-4.

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
        <<-PROMPT
          You are an expert programmer in \\#{@technologies.join(", ")}.

          You are tasked with writing code using the following technologies: \\#{@technologies.join(", ")}.

          The description of the task is \\#{@description}

          Take a deep breath and think step by step before you start coding.
        PROMPT
      end
    end
  end
end
```

### Step 2 - Create an Action

Actions are perfect for performing operations based on the generated output. Let’s write an action to save the generated code to a file:

```ruby
# ./write_file_action.rb

require "sublayer"

module Sublayer
  module Actions
    class WriteFileAction < Base
      def initialize(file_path:, file_contents:)
        @file_path = file_path
        @file_contents = file_contents
      end

      def call
        File.write(@file_path, @file_contents)
      end
    end
  end
end
```

### Step 3 - Create an Agent

Next, create an agent that reacts whenever a change is detected in the code file. This agent will continuously check the code’s syntax correctness:

```ruby
# ./syntax_check_agent.rb

require "sublayer"

module Sublayer
  module Agents
    class SyntaxCheckAgent < Base
      trigger_on_files_changed { [@file_path] }

      def initialize(options = {})
        @file_path = options[:file_path]
      end

      goal_condition { @syntax_correct }

      check_status do
        syntax_result = System.call("ruby -c \\#{@file_path}")
        @syntax_correct = syntax_result.exitstatus == 0
      end

      step do
        unless @syntax_correct
          puts "Syntax error detected!"
        end
      end
    end
  end
end
```

### Comprehensive Usage

With everything set, you can now utilize your Sublayer components together.

```ruby
require './code_from_description_generator'
require './write_file_action'
require './syntax_check_agent'

# Create Generator instance
code_generator = Sublayer::Generators::CodeFromDescriptionGenerator.new(
  description: "Create a simple Hello World program",
  technologies: ["ruby"]
)

# Generate code
code = code_generator.generate

# Write code to file
write_action = Sublayer::Actions::WriteFileAction.new(file_path: "./hello_world.rb", file_contents: code)
write_action.call

# Initialize agent to watch the file
syntax_agent = Sublayer::Agents::SyntaxCheckAgent.new(file_path: "./hello_world.rb")
syntax_agent.run
```

This setup illustrates the seamless interaction between Generators, Actions, and Agents in the Sublayer framework. The generator creates code, the action writes it to a file, and the agent continuously monitors the file for syntax errors, demonstrating a full-circle workflow.

### Next Steps

Now that you've created a comprehensive setup using the core components, explore the [Guides]({% link docs/guides/index.md %}) for more advanced examples and additional framework capabilities. Join our [community Discord](https://discord.gg/TvgHDNEGWa) to discuss and share insights.