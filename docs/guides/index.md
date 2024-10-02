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

### [Run Llama3.1 locally with Ollama]({% link docs/guides/running-local-llama31-with-ollama.md %})

A guide detailing the steps to run Llama3.1 locally using Ollama.

* Install and configure Ollama
* Download and manage Llama3.1
* Implement a custom provider for use with Sublayer

### [Build a Custom Agent Trigger]({% link docs/guides/build-a-custom-trigger.md %})

This guide shows how to develop a custom trigger for an agent in Sublayer.

* Learn how to define custom trigger conditions
* Understand the integration of triggers in agents

### Writing an Agent

The 'Writing an Agent' section explains the agent's components but lacks step-by-step code examples for creating an agent from scratch. Adding a complete example, including trigger definitions and method implementations, will illustrate the process better for developers unfamiliar with Sublayer.

Here's a simple example of how to create an agent:

```ruby
class ExampleAgent < Sublayer::Agents::Base
  trigger { /* condition to activate agent */ }
  goal_condition { /* logic to define completion */ }
  check_status { /* logic to monitor progress */ }
  step { /* logic to progress towards goal */ }
end

ExampleAgent.new.run
```

In this example:
- `trigger` defines when the agent should be activated and begin execution.
- `goal_condition` specifies the criteria for the agent's task completion.
- `check_status` provides the mechanism to monitor ongoing progress towards the goal.
- `step` contains the actionable steps the agent takes in pursuit of the goal.

This structure allows for the creation of a flexible, event-driven agent capable of handling complex workflows and dynamic environments.

For more detailed guidance, consider exploring our [interactive agent generator](https://blueprints.sublayer.com/interactive-code-generator/sublayer-agents).

## Try generating your own agent:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-agents" width="100%" height="500px"></iframe>
