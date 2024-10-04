---
title: "Quick Start"
nav_order: 2
---
# Quick Start

Sublayer is made up of three main concepts: Generators, Actions, and Agents. These combine to create powerful AI-powered applications in a simple and easy-to-use interface.

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

Set up environment variables for your chosen AI provider:

- **OpenAI**: Set your API key in the `OPENAI_API_KEY` environment variable. Visit [OpenAI](https://openai.com/product) to get an API key.

- **Claude**: Set your API key in the `ANTHROPIC_API_KEY` environment variable. Visit [Anthropic](https://anthropic.com/) to get an API key.

- **Gemini**: Set your API key in the `GEMINI_API_KEY` environment variable. Visit [Google AI Studio](https://ai.google.dev/) to get an API key.

Ensure that your keys are correctly configured to avoid potential issues.

## Step 3a - Create a Generator

Create a Sublayer Generator. Generators are responsible for taking input from your application and generating output using an LLM like GPT-4.

Here's an example of a generator that takes a description of code and the technologies to use and generates code with an LLM:

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

To learn more about everything you can do with a generator, check out the [Generators]({% link docs/concepts/generators.md %}) page.

## Step 3b - Try Generating One!
Try generating your own generator with our interactive code generator below:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators" width="100%" height="500px"></iframe>

## Step 4 - Use Your Generator
Require the Sublayer gem and your generator and call `generate`!

Here's an example of how you might use the `CodeFromDescriptionGenerator` above:

```ruby
# ./example.rb

require 'sublayer'
require './code_from_description_generator'

generator = Sublayer::Generators::CodeFromDescriptionGenerator.new(description: 'a function that returns the first 10 happy numbers', technologies: ['ruby'])

puts generator.generate
```

Now that you've created your first generator, explore more in the [documentation](/docs)!