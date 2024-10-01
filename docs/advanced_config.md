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

## Creating CLI Projects

Sublayer now supports creating CLI projects leveraging different AI providers and models. Use the `CLIProject` to set up these projects with ease. Choose from AI providers such as OpenAI, Anthropic, or Gemini.

Usage:

```shell
sublayer new my_cli_project --template CLI --provider OpenAI --model gpt-4o
```

## Creating Github Action Projects

Apart from CLI projects, Sublayer also allows you to create Github Action projects, streamlining continuous integration workflows using AI. The `GithubActionProject` command makes it simple to start.

Usage:

```shell
sublayer new my_github_action --template GithubAction --provider OpenAI --model gpt-4o
```

By expanding the supported project types, you can integrate AI more closely with development pipelines, enhancing automation and efficiency.