---
title: Advanced Config
nav_order: 6
---
# Advanced Config

After installing Sublayer, you can choose between any of the available LLM providers we support.

## Setup and Installation Guide

### Prerequisites

- Ensure you have a working Ruby environment (version 2.6.0 or newer).
- Install bundler with `gem install bundler`.

### Installation Steps

1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```

2. Navigate to the project directory:
   ```bash
   cd <project-directory>
   ```

3. Install the necessary gems:
   ```bash
   bundle install
   ```

4. Set your API keys in the environment:
   - OpenAI: Set `OPENAI_API_KEY`.
   - Anthropic: Set `ANTHROPIC_API_KEY` if using Claude.
   - Gemini: Set `GEMINI_API_KEY` if using Gemini.

5. Validate the installation:
   - Run tests to ensure everything is set up correctly:
     ```bash
     rspec
     ```
   - Check if the application starts as expected.

### Confirmation of Successful Setup

- Ensure that all tests are passing after the setup.
- You should be able to start the application without errors.

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
