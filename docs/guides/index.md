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

A guide on how to run Llama3.1 locally using Ollama and integrate it with Sublayer.

* Step-by-step setup instructions for Ollama and Llama3.1
* Instructions for creating a custom Provider for Ollama Llama3.1
* Example of generating fun Dr. Seuss styled poems

### [Build a Custom Agent Trigger]({% link docs/guides/build-a-custom-trigger.md %})

Learn how to build a custom trigger for an agent in the Sublayer framework.

* Create a simple time interval trigger
* Understand how triggers can react to different events

## Understanding AI Provider Integration

Beyond the step-by-step guides, understanding how to integrate and switch between different AI providers is crucial for leveraging Sublayer's capabilities:

* Configure Sublayer to use different providers like OpenAI, Gemini, or Claude.
* Learn best practices and common troubleshooting steps for each provider by following the [Advanced Config Guide]({% link docs/advanced_config.md %}).
* Adjust your configurations easily to switch between different models.

For more detailed discussions and frequent updates, consider joining our [Discord community](https://discord.gg/pWZ689GW7U) or visiting our [documentation site](https://docs.sublayer.com).