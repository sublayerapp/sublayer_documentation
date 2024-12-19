---
layout: default
title: Troubleshooting
nav_order: 7
---

# Troubleshooting

This document provides common error scenarios and troubleshooting tips to assist developers in resolving issues related to the framework and the LLM providers.

## Common Error Scenarios

### 1. API Key Errors
**Problem:** Unable to authenticate with the API service.  
**Solution:** Ensure that your API key is correct and is set as an environment variable. Check each provider's requirements:
- OpenAI: Set `OPENAI_API_KEY`
- Claude (Anthropic): Set `ANTHROPIC_API_KEY`
- Gemini: Set `GEMINI_API_KEY`

Ensure there is no trailing white space or invisible characters.

### 2. Instability with Gemini
**Problem:** Unexpected behavior or failures when using Gemini.  
**Solution:** Since Gemini is an unstable provider currently in beta, it is important to acknowledge it may face unexpected issues. Regularly update the SDK and refer to [Google AI Studio](https://ai.google.dev/) for any known issues or patches.

### 3. Dependency Conflicts
**Problem:** Conflicts between gem dependencies leading to bundling failures.  
**Solution:** Check the `Gemfile.lock` for dependency versions and resolve conflicts by updating or downgrading gems as necessary.

### 4. Network Issues
**Problem:** Network-related errors when calling external APIs.  
**Solution:** Ensure that the API service is not down, verify that your system's firewall settings allow outbound traffic on required ports, and check your internet connection.

For further assistance, [Join our community Discord channel](https://discord.gg/TvgHDNEGWa).