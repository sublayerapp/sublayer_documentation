---
title: Advanced Config
nav_order: 6
---
# Advanced Config

After installing Sublayer, you can choose between any of the available LLM providers we support.

## OpenAI (Default)

Set your `OPENAI_API_KEY` environment variable. (Visit [OpenAI](https://openai.com/product) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

## Anthropic

Supported Models: Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

## Google

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

Usage:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

## TDD Bot Agent

The TDD Bot Agent is an advanced feature of the Sublayer framework that automates code testing and generation based on test results. By leveraging the capabilities of agents within the framework, it provides a hands-free test-driven development (TDD) experience.

### How It Works

The TDD Bot listens for changes in your test files and implementation files. Whenever a change is detected, it runs the associated tests. If any test fails, the bot uses those results to automatically generate the needed code to pass the failing tests. This process continues until all tests pass.

### Example Usage

To try the TDD Bot, you might set it up with the following command:

```bash
$ tddbot make_tests_pass lib/my_class.rb "rspec spec/my_class_spec.rb"
```

In this example, the TDD Bot is tasked to make tests in `spec/my_class_spec.rb` pass by modifying `lib/my_class.rb` automatically based on the feedback from failing tests.

For more details, see the [guide on building a TDD Bot](https://docs.sublayer.com/docs/guides/tdd_bot).