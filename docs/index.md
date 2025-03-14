---
title: Core Concepts
nav_order: 3
---
# Core Concepts

The framework is broken up into three core concepts: Generators, Actions, and Agents.

Browse the links below to go more in depth into each of these concepts:

* [Generators]({% link docs/concepts/generators.md %})
* [Actions]({% link docs/concepts/actions.md %})
* [Agents]({% link docs/concepts/agents.md %})

## Configuration Tips

For proper use of the library, ensure API keys are configured correctly:

- **OpenAI**: Requires `OPENAI_API_KEY` environment variable.
- **Gemini**: Requires `GEMINI_API_KEY` environment variable.
- **Claude**: Requires `ANTHROPIC_API_KEY` environment variable.

Ensuring these configurations are in place allows seamless integration and use of the Sublayer functionalities across supported models.