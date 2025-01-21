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

## Ruby Version Compatibility

Sublayer is compatible with the following Ruby versions based on the `sublayer.gemspec` specifications:

- Ruby 2.6
- Ruby 2.7
- Ruby 3.0
- Ruby 3.1

### Additional Dependencies and Settings

When using certain Ruby versions, additional gems may be necessary. For example:

- For Ruby versions greater than 3.0, ensure that the `webrick` gem is included when using Jekyll <= 4.2.2. This is indicated in the Gemfile comments as requirements for different Ruby versions.

```ruby
gem "webrick", "~> 1.7"
```

Make sure to check the Gemfile and your specific Ruby version requirements to maintain compatibility.
