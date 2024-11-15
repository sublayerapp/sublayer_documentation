---
title: "Quick Start"
nav_order: 2
---
# Quick Start

Sublayer is composed of three main concepts: Generators, Actions, and Agents. These are utilized to create AI-integrated applications seamlessly and efficiently.

## Overview

Generators in Sublayer take input in the form of strings and utilize an LLM like GPT-4 to process and generate new output strings. Below we showcase how to create a simple generator that accepts a description and the technologies to use for generating code using an LLM.

### Installation

Install the Sublayer gem:

```shell
$ gem install sublayer
```

Or include it in your Gemfile:

```ruby
gem "sublayer"
```

### Environment Setup

Make sure you set the OpenAI API key as an environment variable:

```shell
export OPENAI_API_KEY="your-api-key"
```

To acquire an API key, visit [OpenAI's website](https://openai.com/product).

### Step 3a - Create a Generator

Construct a generator in Sublayer, which functions by taking input from your program and generating output with an LLM. Below is a concise example demonstrating a generator which accepts code descriptions and technologies, generating suitable code via an LLM:

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

_For more options, explore our [Generators page](concepts/generators.md)._ 

### Step 3b - Generate a New Generator

Harness our interactive code generator below for creating dynamic generators.

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators" width="100%" height="500px"></iframe>

### Step 4 - Utilize Your Generator

Incorporate and deploy your generator as follows:

```ruby
# ./example.rb

require 'sublayer'
require './code_from_description_generator'

generator = Sublayer::Generators::CodeFromDescriptionGenerator.new(description: 'a function that returns the first 10 happy numbers', technologies: ['ruby'])

puts generator.generate
```

## Configuring AI Models

Sublayer is a model-agnostic framework and integrates smoothly with a variety of AI models. Here's how to configure different model providers:

### OpenAI (Default)

- **Environment Variable**: `OPENAI_API_KEY`
- **Model Setup**:
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
  Sublayer.configuration.ai_model = "gpt-4o"
  ```

### Claude

- **Environment Variable**: `ANTHROPIC_API_KEY`
- **Model Setup**:
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
  Sublayer.configuration.ai_model = "claude-3-opus-20240229"
  ```

### Gemini

- **Environment Variable**: `GEMINI_API_KEY`
- **Model Setup**:
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
  Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
  ```

Each AI provider requires you to obtain an API key and set it as an environment variable as shown above.

### Next Steps

Develop your first generator! Subsequently, you might:

- Develop [Actions]({% link docs/concepts/actions.md %}) to leverage what you've produced.
- Survey [Examples]({% link docs/guides/index.md %}) showcasing Sublayer usage.
- Connect via [our Discord](https://discord.gg/TvgHDNEGWa) for support and updates.

