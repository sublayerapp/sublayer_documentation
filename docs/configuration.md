---
layout: default
title: Configuration Guide
nav_order: 6
---

# Configuration Guide

This guide covers how to configure the Sublayer framework to fit your needs. Learn how to set up AI providers, select models, and manage logging.

## AI Providers

The Sublayer framework supports multiple AI providers. You can select from the following options based on your requirements:

- **OpenAI** (Default)
  - Set your `OPENAI_API_KEY` environment variable.
  - Configure the AI provider in your code:
    ```ruby
    Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
    Sublayer.configuration.ai_model = "gpt-4o"
    ```

- **Anthropic (Claude)**
  - Set your `ANTHROPIC_API_KEY` environment variable.
  - Configure the AI provider in your code:
    ```ruby
    Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
    Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
    ```

- **Google (Gemini)**
  - Set your `GEMINI_API_KEY` environment variable.
  - Configure the AI provider in your code:
    ```ruby
    Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
    Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
    ```

## Logging

Logging is an essential part of monitoring the Sublayer framework. Configure logging based on your application's needs:

- **NullLogger**: Disables logging.
  ```ruby
  Sublayer.configuration.logger = Sublayer::Logging::NullLogger.new
  ```

- **DebugLogger**: Outputs log messages to the console (stdout).
  ```ruby
  Sublayer.configuration.logger = Sublayer::Logging::DebugLogger.new
  ```

- **JsonLogger**: Writes log messages in JSON format to a specified file.
  ```ruby
  Sublayer.configuration.logger = Sublayer::Logging::JsonLogger.new('/path/to/logfile.log')
  ```

Please select a provider, model, and logging method that best fits your application's requirements.