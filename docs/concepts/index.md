---
title: Core Concepts
nav_order: 3
---
# Core Concepts

The framework consists of three core components: Generators, Actions, and Agents. Recent updates have added support for various AI providers, with varying model capabilities.

Browse the links below to go more in depth into each of these concepts:

* [Generators]({% link docs/concepts/generators.md %})
* [Actions]({% link docs/concepts/actions.md %})
* [Agents]({% link docs/concepts/agents.md %})

## AI Model Choices

Sublayer is designed to be model-agnostic, offering flexibility with supported providers:

### OpenAI
- **Stability:** High
- **Model:** `gpt-4o` (latest update)

### Claude (Anthropic)
- **Stability:** High
- **Models Supported:** Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

### Gemini (Google)
- **Stability:** Low (Unstable Beta)
- **Recommendations:** Not recommended for production use.

Refer to [docs/advanced_config.md]({% link docs/advanced_config.md %}) for detailed provider setup information.

Consider these aspects when choosing the AI model to use in your applications.