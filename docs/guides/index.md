---
title: Guides
nav_order: 5
---

# Guides

We're always looking for more ideas for guides. If you have an idea for a guide, let us know by sending us a message in [our Discord](https://discord.gg/pWZ689GW7U).

## List of Guides

### [Rails Voice Chat with LLM]({% link docs/guides/voice-chat.md %})

A Ruby on Rails app that uses OpenAI's Speech to Text and Text to Speech APIs to enable voice chatting with an LLM.

* Learn how to use Actions and Generators
* Learn how to use a simple conversational context with a Generator

### [TDD Bot]({% link docs/guides/tdd_bot.md %})

A command line program that uses an LLM to generate code to pass your failing tests, enabling a workflow where you practice Test-Driven Development with an LLM.

* Learn how Tasks are used to combine Actions and Generators
* Learn how to build different types of Actions
* Learn how a Generator can take multiple inputs to generate the output you want

### [Run LLM Models Locally with Llamafile]({% link docs/guides/running-local-models-with-llamafile.md %})

A guide on the recommended way to set up and run LLMs locally to interface with Sublayer.

* Learn how to set up [llamafile](https://github.com/Mozilla-Ocho/llamafile)
* Learn which models we recommend for local use
* Learn how to point Sublayer to your locally running server

### [Run Llama3.1 with Ollama]({% link docs/guides/running-local-llama31-with-ollama.md %})

A detailed walkthrough to set up, download, and run the Llama3.1 model locally using the Ollama environment.

* Follow a video tutorial for a clear understanding
* Implement custom provider setup for efficient use

### Using Sublayer's Project Commands

This section of the guide focuses on leveraging Sublayer's CLI project capabilities:

* [CLIProject Class]: Walks through setting up command-line interface projects with AI integrations using predefined templates. Learn how to configure providers like OpenAI, Claude, or Gemini, and utilize AI models such as `gpt-4o`, `claude-3-haiku-20240307`, and `gemini-1.5-flash-latest`.
* [GithubActionProject Class]: Details creating GitHub Actions-based projects, enabling workflows triggered by specific events with integrated AI functionality.
* [QuickScriptProject Class]: Provides instructions to easily set up quick script projects using specified AI models.

Detailed use cases for each project type include code examples and configurations needed to get started.
