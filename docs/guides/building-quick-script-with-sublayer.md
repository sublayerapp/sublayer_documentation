---
title: Building a Quick Script with Sublayer
parent: Guides
---

# Building and Deploying a Quick Script with Sublayer

This guide details the process of building and deploying a quick script using Sublayer, enabling new users to rapidly prototype and deploy their own scripts.

## Setup
Before beginning, ensure you have Sublayer installed. You can add it to your Gemfile:

```ruby
gem 'sublayer', '~> 0.2'
```

Run the bundle command to install it:

```bash
bundle install
```

## Dependency Management
Sublayer relies on several dependencies, which are managed via Bundler. Make sure to update your `Gemfile` accordingly.

## Integrating AI Model Settings
Set up your environment by configuring API keys and choosing an AI model. For example, using OpenAI as your AI provider:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = 'gpt-4o'
```

Make sure to set the appropriate API key in your environment variables.

## Example Script
Below is a simple example to get you started with a basic script:

```ruby
require 'sublayer'

class ExampleScript < Sublayer::Generators::Base
  llm_output_adapter type: :single_string, name: 'result', description: 'Example result'

  def initialize(prompt)
    @prompt = prompt
  end

  def prompt
    @prompt
  end
end

# Execution example
example = ExampleScript.new('Say something inspiring!')
puts example.generate
```

This script initializes a new Sublayer generator that prompts an AI model to "Say something inspiring!"

Deploy your script using:

```bash
ruby your_script.rb
```
