# README

## Overview

Sublayer is a model-agnostic AI agent framework in Ruby that allows you to combine Generators, Actions, and Agents to build AI-powered applications.

## Installation

To install the Sublayer gem, you can add it to your Gemfile or install it directly:

```bash
$ gem install sublayer
```

Or to include it in a Gemfile:

```ruby
gem 'sublayer', '~> 0.2.7'
```

After adding the gem, you'll need to execute:

```bash
$ bundle install
```

## Usage

To use Sublayer, you'll typically want to require the gem in your Ruby scripts and set up your environment:

### Setting Environment Variables

Ensure your environment is set up with the necessary API keys, for instance:

```bash
export OPENAI_API_KEY="your-api-key"
```

### Example: Creating a Generator

Here's a simple example of a generator that uses Sublayer to generate code based on a description:

```ruby
require 'sublayer'

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
          You are an expert programmer in \
#{@technologies.join(", ")}.

          You are tasked with writing code using the following technologies: \
#{@technologies.join(", ")}.

          The description of the task is \
#{@description}

          Take a deep breath and think step by step before you start coding.
        PROMPT
      end
    end
  end
end
```

## New Project Types

Sublayer now supports multiple project templates including `CLI`, `GithubAction`, and `QuickScript`. These templates can be used to quickly set up new projects with specific use cases in mind:

- **CLI:** Use this template to create a command-line interface project.
- **GithubAction:** This template helps to set up projects as Github Actions, ideal for CI/CD workflows.
- **QuickScript:** Perfect for quickly setting up simple script-based projects.

## Update and Maintenance

Keep your `Gemfile` and `README.md` in sync with the `Gemfile.lock` to ensure consistency in dependency versions, especially when upgrading versions like from `sublayer 0.2.6` to `sublayer 0.2.7`.

## Support and Documentation

For more detailed instructions, guides, and advanced configurations, please refer to our:

- [Quick Start Guide](docs/quick_start.md)
- [Core Concepts](docs/concepts/index.md) covering Generators, Actions, and Agents.
- [Examples and Additional Guides](docs/guides/index.md).
- [Sublayer Documentation Site](https://docs.sublayer.com)

For any issues or support, join our [Discord](https://discord.gg/pWZ689GW7U) or visit our [GitHub Repository](https://github.com/sublayerapp/sublayer).
