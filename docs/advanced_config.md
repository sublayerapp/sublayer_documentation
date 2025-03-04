---
layout: default
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

---

## Using the Gemini Model

The Gemini model is part of the Google AI offerings, providing a robust API for various AI tasks. Here's how to configure and use the Gemini model in Sublayer:

### Configuration

Ensure you have your Gemini API key, and configure the provider in your application as shown:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

### Best Practices and Limitations
- **Best Practice**: Use Gemini for tasks requiring high concurrency and lightweight operations.
- **Limitations**: The API is currently in beta; expect possible changes in its features.

### Practical Example
Here’s a quick example of using the Gemini model:

```ruby
result = Sublayer::Generators::CodeFromDescriptionGenerator.new(description: "Describe the task here").generate
puts result
```

This code sets up a generator to describe tasks using Gemini's AI capabilities.

---

## Using the Claude Model

The Claude model is developed by Anthropic, known for its advanced language capabilities.

### Configuration

Make sure you have set up your Claude API key:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

### Best Practices and Limitations
- **Best Practice**: Leverage Claude for deep language processing and complex decision-making tasks.
- **Limitations**: It is heavily language-focused, optimizing best for English and Western languages.

### Practical Example
Here’s how you can employ the Claude model:

```ruby
result = Sublayer::Generators::TaskStepsGenerator.new(task: "Document creation task").generate
puts result
```

This example uses Claude for generating step-by-step instructions within its language processing framework.