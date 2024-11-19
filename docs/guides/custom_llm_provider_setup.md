---
layout: default
title: Custom LLM Provider Setup
parent: Guides
nav_order: 3
---

# Custom LLM Provider Setup

Learn how to set up and integrate custom LLM providers in Sublayer using non-standard models like 'OllamaLlama31' and 'Gemini'. This guide provides step-by-step instructions and code examples.

## Overview

Sublayer can be extended with custom LLM providers for enhanced functionality and adaptability. This document guides you through the integration process, using the 'OllamaLlama31' and 'Gemini' providers as examples.

## Examples from `lib/sublayer/providers`

To configure your custom LLM provider, examine and extend the existing code found in `lib/sublayer/providers`. This folder contains adaptations that you can use as templates for your implementation.

## Integration Steps

1. **Understand the Existing Code**: Familiarize yourself with how current providers, such as OpenAI, Claude, and Google Gemini, are implemented by reviewing the classes in `lib/sublayer/providers/`.

2. **Set API Credentials**: Ensure you have valid API keys for your custom provider and set them as environment variables. Modify your configuration to point to your custom provider class:
   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::CustomProvider
   Sublayer.configuration.ai_model = "your-model-name"
   ```

3. **Implement Provider Class**: Create a new provider class in `lib/sublayer/providers/` by adapting the API request patterns shown in existing provider classes. Ensure you handle API responses appropriately.

4. **Test Your Setup**: Thoroughly test your custom provider integration to ensure compatibility with Sublayer's tasks and actions.

## Further Resources

For more detailed examples and support, refer to the [Sublayer documentation](https://docs.sublayer.com) or join our community on [Discord](https://discord.gg/pWZ689GW7U).