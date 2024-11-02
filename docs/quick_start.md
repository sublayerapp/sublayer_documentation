---
title: "Quick Start"
nav_order: 2
---
# Quick Start

Sublayer is made up of three main concepts: Generators, Actions, and Agents. These concepts combine to create powerful AI-powered applications in a simple and easy-to-use interface.

You can think of a Sublayer Generator as an object that takes some string inputs and runs them through an LLM to generate some new string output.

In this example, we'll create a simple generator that takes a description of code and the technologies to use and generates code using an LLM like GPT-4.

---

## Page Structure

### Front Matter

In the documentation, it is important to follow the structure as shown below for consistency and proper navigation.

```yaml
---
layout: default
title: Page Title
nav_order: 2
has_children: true
---
```

- `layout`: Defines which layout template is used. For example, `default` is the standard layout.
- `title`: The title of the page.
- `nav_order`: Determines the order in the navigation menu.

### Markdown Content

```markdown
# Main Heading
## Subheading
Content goes here.
```

---

## Step 1 - Installation

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

## Step 3 - Configuration

To configure the AI provider and model, update your project to include the following configuration settings. This configuration is crucial since many code examples and CLI options rely heavily on these settings:

### OpenAI (Default Provider)

Usage:

```ruby
Sublayer.configure do |config|
  config.ai_provider = Sublayer::Providers::OpenAI
  config.ai_model = "gpt-4o"
end
```

This setup expects an `OPENAI_API_KEY` environment variable to be set.

### Claude

Usage:

```ruby
Sublayer.configure do |config|
  config.ai_provider = Sublayer::Providers::Claude
  config.ai_model = "claude-3-5-sonnet-20240620"
end
```

This setup expects a `ANTHROPIC_API_KEY` environment variable to be set.

### Gemini [Unstable]

Usage:

```ruby
Sublayer.configure do |config|
  config.ai_provider = Sublayer::Providers::Gemini
  config.ai_model = "gemini-1.5-pro"
end
```

This setup expects a `GEMINI_API_KEY` environment variable to be set.

---

Now, with the configuration in place, your Sublayer application is ready to integrate and utilize AI models from different providers efficiently.

### Step 3a - Create a Generator

Create a Sublayer Generator. Generators are responsible...

... the example above:

```ruby
# ./example.rb

require 'sublayer'
require './code_from_description_generator'

generator = Sublayer::Generators::CodeFromDescriptionGenerator.new(description: 'a function that returns the first 10 happy numbers', technologies: ['ruby'])

puts generator.generate
```

### Next Steps

Now that you've created your first generator...

### Troubleshooting and Common Issues

In case you encounter any issues while configuring your environment or running your generator...

...please refer to the [Troubleshooting Guide](/docs/troubleshooting/) for common solutions.

---
