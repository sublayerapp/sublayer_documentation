---
title: Custom Components
nav_order: 4
---
# Custom Components

The Sublayer framework is designed for extensibility. By introducing your own Generators, Actions, and Agents, you can also develop custom Output Adapters for Generators, Triggers for Agents, and Providers for any bespoke models you work with.

In extending the environments, understanding and configuring AI providers becomes crucial. Follow the guide below on configuring various AI models via different providers:

## Configuring AI Providers

### OpenAI

To configure Sublayer with OpenAI models, obtain an OpenAI API key and set it as an environment variable.
- **Environment Variable**: `OPENAI_API_KEY`
- **Configuration**:
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
  Sublayer.configuration.ai_model = "gpt-4o"
  ```

### Claude

Configuration for Claude involves retrieving an API key and positioning it into `ANTHROPIC_API_KEY`.
- **Environment Variable**: `ANTHROPIC_API_KEY`
- **Configuration**:
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
  Sublayer.configuration.ai_model = "claude-3-opus-20240229"
  ```

### Gemini

Ensure you have your Gemini API key set in the environment.
- **Environment Variable**: `GEMINI_API_KEY`
- **Configuration**:
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
  Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
  ```


Explore the links below to dig deeper into creating and managing your custom components:

* [Output Adapters]({% link docs/custom_components/output-adapters.md %})
* [Triggers]({% link docs/custom_components/triggers.md %})

Leveraging these configurations ensures your integration is seamless across diverse AI platforms.

### Next Steps

With the AI providers configured, delve into component-specific customization and enhancement within the Sublayer framework.
