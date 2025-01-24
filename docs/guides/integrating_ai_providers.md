---
title: Integrating AI Providers with Sublayer
parent: Guides
---

# Integrating AI Providers with Sublayer

Sublayer supports multiple AI providers, allowing flexibility in choosing the right tool for your project. This guide provides a comprehensive walkthrough on setting up and understanding the differences between the supported providers: OpenAI, Claude, and Gemini.

## OpenAI

1. **Setup:**
   - Set your `OPENAI_API_KEY` environment variable.
   - Configure your project to use OpenAI by setting:
     ```ruby
     Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
     Sublayer.configuration.ai_model = "gpt-4o"
     ```

2. **Limitations:**
   - Ensure compliance with OpenAI’s usage policies and rate limits.

## Claude

1. **Setup:**
   - Obtain an API key from Anthropic and set it as `ANTHROPIC_API_KEY`.
   - Configure your project:
     ```ruby
     Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
     Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
     ```

2. **Limitations:**
   - Use the function calling features responsibly, they are experimental.

## Gemini

1. **Setup:**
   - Set the `GEMINI_API_KEY` environment variable after obtaining it from Google AI Studio.
   - Configuration for Gemini can be done as follows:
     ```ruby
     Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
     Sublayer.configuration.ai_model = "gemini-1.5-pro"
     ```

2. **Limitations:**
   - Features are in beta and may be unstable; not recommended for critical applications.

## Conclusion

Understanding these differences allows developers to make informed decisions based on their specific use-case requirements, ensuring effective and efficient integration with the Sublayer framework. Reach out through our [Discord](https://discord.gg/TvgHDNEGWa) if you have any questions.