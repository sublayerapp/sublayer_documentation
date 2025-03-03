---
title: "Quick Start"
nav_order: 2
---
# Quick Start
Sublayer is made up of three main concepts: Generators, Actions, and Agents. These concepts combine to create powerful AI-powered applications in a simple and easy-to-use interface.

## Installation

To get started with the Sublayer framework, follow these installation steps:

**Step 1 - Install the Sublayer Gem**

You can install the Sublayer gem directly:

```shell
$ gem install sublayer
```

Or add it to your project's Gemfile:

```ruby
gem "sublayer"
```

And then run:

```shell
$ bundle install
```

**Step 2 - Add Sublayer Framework to Bundler**

Add the Sublayer gem to your `Gemfile`:

```ruby
gem "sublayer"
```

**Step 3 - Set Environment Variables**

Set the appropriate environment variables for API integrations. This is crucial when working with different AI model providers.

For example, to use OpenAI, set:

```shell
export OPENAI_API_KEY="your-openai-api-key"
```

For Claude, set:

```shell
export ANTHROPIC_API_KEY="your-anthropic-api-key"
```

For Gemini, set:

```shell
export GEMINI_API_KEY="your-gemini-api-key"
```

### Setting Up API Integrations

In your Ruby application, configure the desired AI provider and model by setting the following configuration:

```ruby
Sublayer.configure do |config|
  config.ai_provider = Sublayer::Providers::OpenAI # or Claude, Gemini
  config.ai_model = "gpt-4o" # specify your model
end
```

Visit the providers' websites to acquire API keys.

- [OpenAI](https://openai.com/product)
- [Anthropic](https://anthropic.com/)
- [Google AI Studio](https://ai.google.dev/)

### Example Configuration

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

With these configurations, you can start building AI-powered applications using the Sublayer framework. Feel free to explore and build custom Generators, Actions, and Agents tailored to your needs!