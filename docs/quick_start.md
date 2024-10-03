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

### Step 3a - Create a Generator

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

To learn more about everything you can do with a generator, check out the [Generators]({% link docs/concepts/generators.md %}) page.

### Step 3b - Try Generating One!

Try generating your own generator with our interactive code generator below:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators" width="100%" height="500px"></iframe>

### Step 4 - Use Your Generator

Require the Sublayer gem and your generator and call `generate`!

Here's an example of how you might use the \`CodeFromDescriptionGenerator\` above:

```ruby
# ./example.rb

require 'sublayer'
require './code_from_description_generator'

generator = Sublayer::Generators::CodeFromDescriptionGenerator.new(description: 'a function that returns the first 10 happy numbers', technologies: ['ruby'])

puts generator.generate
```

### Next Steps

Now that you've created your first generator, you can:

* Create some [Actions]({% link docs/concepts/actions.md %}) to do something with whatever you've generated.
* Browse some [Examples]({% link docs/guides/index.md %}) to learn how to use the Sublayer gem in different types of projects.
* [Join our Discord](https://discord.gg/TvgHDNEGWa) to chat with us, for support, and to keep up with the latest updates.

## Choose Your AI Model

Sublayer is designed to be model-agnostic, allowing it to work with different AI models. Below you can find the supported LLM providers and how to set them up.

### OpenAI (Default)

Ensure you have an OpenAI API key set in the `OPENAI_API_KEY` environment variable. You can get an API key from [OpenAI](https://openai.com/product).

Usage example:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

### Claude (Anthropic)

To utilize Claude, make sure your `ANTHROPIC_API_KEY` environment variable is set. Visit [Anthropic](https://anthropic.com/) for more details.

Usage example:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
```

### Gemini (Experimental)

The Gemini integration is in beta, not recommended for production. You'll need a `GEMINI_API_KEY`. Visit [Google AI Studio](https://ai.google.dev/) for setup.

Usage example:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-pro"
```
