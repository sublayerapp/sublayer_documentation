---
title: "Quick Start"
nav_order: 2
---
# Quick Start

Sublayer is made up of three main concepts: Generators, Actions, and Agents. These concepts combine to create powerful AI-powered applications in a simple and easy-to-use interface.

You can think of a Sublayer Generator as an object that takes some string inputs and runs them through an LLM to generate some new string output.

In this example, we'll create a simple generator that takes a description of code and the technologies to use and generates code using an LLM like GPT-4.

---

## Table of Contents
- [Installation](#installation)
- [Environment Setup](#environment-setup)
- [Create a Generator](#create-a-generator)
- [Use Your Generator](#use-your-generator)
- [Full CLI Project Walkthrough](#full-cli-project-walkthrough) <!-- New Section -->

---

## Installation

Install the Sublayer gem:

```shell
$ gem install sublayer
```

Or add it to your Gemfile:

```ruby
gem "sublayer"
```

## Environment Setup

Set your OpenAI API key as an environment variable:

```shell
export OPENAI_API_KEY="your-api-key"
```

Don't have a key? Visit [OpenAI](https://openai.com/product) to get one.

## Create a Generator

Create a Sublayer Generator. Generators are responsible for taking input from your application and generating output using an LLM like GPT-4.

Here's an example of a generator that takes a description of code to generate and the technologies to use and generates code with an LLM:

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

To learn more about everything you can do with a generator, check out the [Generators](/docs/concepts/generators.md) page.

## Use Your Generator

Require the Sublayer gem and your generator and call `generate`!

Here's an example of how you might use the `CodeFromDescriptionGenerator` above:

```ruby
# ./example.rb

require 'sublayer'
require './code_from_description_generator'

generator = Sublayer::Generators::CodeFromDescriptionGenerator.new(description: 'a function that returns the first 10 happy numbers', technologies: ['ruby'])

puts generator.generate
```

## Full CLI Project Walkthrough <!-- New Section -->
To demonstrate the full capabilities of the Sublayer framework, we'll create and deploy a complete command-line interface (CLI) project. This comprehensive walkthrough covers:

1. **Project Setup:** Use the Sublayer CLI to create a new project.
2. **Create a Generator:** Develop a simple generator for your business logic.
3. **Define Actions:** Implement actions to handle file operations and interactions.
4. **Develop an Agent:** Leverage agents to automate tasks based on triggers.
5. **Deployment:** Package and deploy your CLI project.

### Step-by-Step Guide

#### Step 1: Project Setup
```bash
sublayer new my_cli_project --template=cli
cd my_cli_project
bundle install
```

#### Step 2: Create a Generator
Within your project, create a generator to define the core functionality. 
Example:
```ruby
# lib/my_cli_project/generators/sample_generator.rb
module MyCLIProject
  module Generators
    class SampleGenerator < Sublayer::Generators::Base
      # Generator implementation
    end
  end
end
```

#### Step 3: Define Actions
Create actions that your CLI will perform.
```ruby
# lib/my_cli_project/actions/sample_action.rb
module MyCLIProject
  module Actions
    class SampleAction < Sublayer::Actions::Base
      def initialize(params:)
        @params = params
      end

      def call
        # action implementation
      end
    end
  end
end
```

#### Step 4: Develop an Agent
Agents automate tasks by linking generators and actions.
```ruby
# lib/my_cli_project/agents/sample_agent.rb
module MyCLIProject
  module Agents
    class SampleAgent < Sublayer::Agents::Base
      trigger_on_files_changed { ["lib/**/*.rb"] }
      goal_condition { @goal_reached }
      check_status {}
      step {}
    end
  end
end
```

#### Step 5: Deployment
Deploy your CLI by packaging it as a gem or script for distribution.