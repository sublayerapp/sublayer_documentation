---
title: "Quick Start"
nav_order: 2
---
# Quick Start

Sublayer is made up of three main concepts: Generators, Actions, and Agents. These concepts combine to create powerful AI-powered applications in a simple and easy-to-use interface.

You can think of a Sublayer Generator as an object that takes some string inputs and runs them through an LLM to generate some new string output.

In this example, we'll create a simple generator that takes a description of code and the technologies to use and generates code using an LLM like GPT-4.

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

Set the appropriate API key for the AI provider:

- **OpenAI**: Set your `OPENAI_API_KEY` as an environment variable. Visit [OpenAI](https://openai.com/product) to get an API key.
  
  ```bash
  export OPENAI_API_KEY="your-openai-api-key"
  ```

- **Claude**: Set your `ANTHROPIC_API_KEY` as an environment variable. Visit [Anthropic](https://anthropic.com/) to get an API key.
  
  ```bash
  export ANTHROPIC_API_KEY="your-anthropic-api-key"
  ```

- **Gemini**: Set your `GEMINI_API_KEY` as an environment variable. Visit [Google AI Studio](https://ai.google.dev/) to get an API key.

  ```bash
  export GEMINI_API_KEY="your-gemini-api-key"
  ```

### Step 3 - Configure Your AI Model

You can set your AI provider and model in the configuration:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

Here's how to configure it for other providers:

- **Claude**
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
  Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
  ```

- **Gemini**
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
  Sublayer.configuration.ai_model = "gemini-1.5-pro"
  ```

### Step 4 - Create a Generator

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

To learn more about everything you can do with a generator, check out the [Generators](/docs/concepts/generators.md) page.

### Next Steps

Now that you've set up the environment and configured your AI provider, you're ready to start creating powerful AI-driven applications. Explore creating custom [Actions](/docs/concepts/actions.md) or [Agents](/docs/concepts/agents.md), or dive into some [Examples](/docs/guides/index.md) to see what's possible with the Sublayer framework.
