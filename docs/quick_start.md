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

### Step 3 - Creating Your First Generator

Here is how to create a basic generator:

```ruby
# Initialize the generator
generator = YourGenerator.new(...)

# Call generate to execute
generator.generate
```

### Environment Setup for Different Models

#### OpenAI (Default)
To configure OpenAI API:
1. Set your `OPENAI_API_KEY` environment variable.
2. Install the `openai` gem if not installed.
3. Configure Sublayer to use OpenAI in your application setup:
   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
   Sublayer.configuration.ai_model = "gpt-4o"
   ```

#### Claude
To configure Claude API:
1. Set your `ANTHROPIC_API_KEY` environment variable.
2. Configure Sublayer to use Claude in your application setup:
   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
   Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
   ```

#### Gemini
To configure Gemini API:
1. Set your `GEMINI_API_KEY` environment variable.
2. Configure Sublayer to use Gemini in your setup:
   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
   Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
   ```

### Next Steps

Now that you've set up your environment, create a [Generator]({% link docs/concepts/generators.md %}) to start building AI-powered features. 

For more in-depth guidance, navigate to:
- [Advanced Configurations]({% link docs/advanced_config.md %})
- [Troubleshooting]({% link docs/troubleshooting.md %})