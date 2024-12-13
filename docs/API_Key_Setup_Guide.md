---
layout: default
title: API Key Setup Guide
parent: Guides
nav_order: 6
---

# API Key Setup Guide

To work with different API providers in your projects, it's essential to properly configure the API keys. This guide will help you set up API keys for our supported providers: OpenAI, Gemini, and Claude.

## OpenAI

- **Environment Variable:** `OPENAI_API_KEY`
- **Where to get the API key?** Visit [OpenAI](https://openai.com/product) to obtain your API key.
- **Setup**: Once you have the key, set it up in your environment by adding it to your shell configuration (`~/.bashrc`, `~/.zshrc`, etc.):
  ```sh
  export OPENAI_API_KEY="your-api-key"
  ```

## Gemini _(Unstable)_

- **Environment Variable:** `GEMINI_API_KEY`
- **Where to get the API key?** Visit [Google AI Studio](https://ai.google.dev/) to obtain your API key.
- **Setup**: Add the key to your shell configuration file:
  ```sh
  export GEMINI_API_KEY="your-api-key"
  ```  

## Claude

- **Environment Variable:** `ANTHROPIC_API_KEY`
- **Where to get the API key?** Visit [Anthropic](https://anthropic.com/) to obtain your API key.
- **Setup**: Add the key to your shell configuration file:
  ```sh
  export ANTHROPIC_API_KEY="your-api-key"
  ```  

Ensure these environment variables are set before starting your application to enable seamless interaction with the respective APIs. If using a deployment service, navigate to their environment settings section to set these up manually.