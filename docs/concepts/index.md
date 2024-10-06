---
title: Core Concepts
nav_order: 3
---
# Core Concepts

The framework is broken up into three core concepts: Generators, Actions, and Agents. Sublayer is designed to be model-agnostic, meaning it can integrate with various AI providers. This flexibility is crucial for accommodating different project requirements and preferences.

## Configuring AI Providers

Sublayer supports multiple AI providers, including OpenAI, Claude, and Gemini. Here is how you can configure them:

### OpenAI (Default)
Ensure your OpenAI API key is set in the `OPENAI_API_KEY` environment variable. Sublayer uses OpenAI as the default provider with GPT-4o model.

Config example:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

### Claude
Set the Claude API key in the `ANTHROPIC_API_KEY` environment variable. Ideal for advanced NLP tasks.

Config example:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
```

### Gemini
Currently in beta, this API is not recommended for production environments. Use the Gemini API key set in `GEMINI_API_KEY`.

Config example:
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-pro"
```

For more on custom provider setup, see our [documentation](https://docs.sublayer.com).

## Key Concepts

* **Generators**
  They are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

  - [Learn More About Generators]({% link docs/concepts/generators.md %})

* **Actions**
  Actions perform operations to get inputs for a Generator or use the output from a Generator. They encapsulate a single action and do not involve complex decision-making.

  - [Learn More About Actions]({% link docs/concepts/actions.md %})

* **Agents**
  Agents automate workflows by defining the triggers, goal conditions, status checks, and steps needed to perform tasks automatically.

  - [Learn More About Agents]({% link docs/concepts/agents.md %})

Browse the links below to go more in depth into each of these concepts:

* [Generators]({% link docs/concepts/generators.md %})
* [Actions]({% link docs/concepts/actions.md %})
* [Agents]({% link docs/concepts/agents.md %})