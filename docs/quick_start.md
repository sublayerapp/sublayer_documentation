---
title: "Quick Start"
nav_order: 2
---
# Quick Start

Sublayer allows you to create AI agents by combining Generators, Actions, and Agents.

In this guide, we'll go through the steps to set up the environment, install the package, and create a simple generator.

## Environment Setup

To get started, you'll need to set up your environment. This includes installing necessary tools and setting up environment variables.

### OpenAI API Key

You'll need an OpenAI API key to use GPT-powered features in Sublayer. To get one, visit [OpenAI](https://openai.com/product) and follow the instructions to create an API key.

Once you have your API key, set it as an environment variable:

```shell
export OPENAI_API_KEY="your-api-key"
```

### Ruby and Gem Dependencies

Make sure your system has Ruby installed. We recommend using a version management tool like `rbenv` to easily switch between Ruby versions.

1. **Install Ruby**: Ensure you have at least Ruby 3.0.0 installed:

    ```shell
    rbenv install 3.0.0
    rbenv global 3.0.0
    ```

2. **Install Bundler**: Install Bundler to manage your Gem dependencies:

    ```shell
    gem install bundler
    ```

3. **Install Gems**: Navigate to your project's directory and install all required gems:

    ```shell
    bundle install
    ```

## Installation

To install the Sublayer gem, run:

```shell
gem install sublayer
```

Alternatively, add it to your `Gemfile`:

```ruby
gem "sublayer"
```

Run `bundle install` to install the gem.

## Create a Generator

Generators are responsible for converting input into AI-driven outputs using models like GPT-4.

Here's how to create a basic Generator for translating text descriptions into code snippets:

```ruby
# file: code_from_description_generator.rb
require "sublayer"

class CodeFromDescriptionGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string, name: "generated_code", description: "Generated code from description"

  def initialize(description:, technologies:)
    @description = description
    @technologies = technologies
  end

  def prompt
    "Generate code using the technologies \\#{@technologies.join(', ')}: \\#{@description}"
  end
end
```

To generate code using your generator:

```ruby
# file: run_generator.rb
require './code_from_description_generator'

generator = CodeFromDescriptionGenerator.new(description: "A chatbot in Ruby", technologies: ["Ruby"])
puts generator.generate
```

## Next Steps

With your environment set up, you're ready to explore:

- Creating more [Generators]({% link docs/concepts/generators.md %})
- Composing [Actions]({% link docs/concepts/actions.md %}) to perform tasks
- Using [Agents]({% link docs/concepts/agents.md %}) for automation

Feel free to reach out on our [Discord](https://discord.gg/TvgHDNEGWa) for questions and help!