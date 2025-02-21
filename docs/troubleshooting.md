---
layout: default
title: Troubleshooting
nav_order: 7
---

# Troubleshooting

This document provides common error scenarios and troubleshooting tips to assist developers in resolving issues and understanding potential pitfalls with solutions.

## Common Error Scenarios

### 1. API Key Errors
**Problem:** Unable to authenticate with the API service.  
**Solution:** Ensure that your API key is correct and is set as an environment variable. For OpenAI, set your `OPENAI_API_KEY`; for Gemini, `GEMINI_API_KEY`; and for Anthropic, `ANTHROPIC_API_KEY`.

### 2. Dependency Conflicts
**Problem:** Conflicts between gem dependencies leading to bundling failures.  
**Solution:** Check the `Gemfile.lock` for dependency versions and resolve conflicts by updating or downgrading gems as necessary.

### 3. Network Issues
**Problem:** Network-related errors when calling external APIs.  
**Solution:** Ensure that the API service is not down, verify that your system's firewall settings allow outbound traffic on required ports, and check your internet connection.

### 4. Provider Configuration Issues
**Problem:** Issues related to incorrect setup of specific LLM providers.  
**Solution:**
  - Double-check the API key for the specific provider and ensure it's set as the correct environment variable.
  - Review the provider-specific API documentation for any special requirements.
  - Use test API calls to verify connectivity.

### 5. Runtime Exceptions
**Problem:** Unexpected runtime errors when executing prompts or using providers.  
**Solution:**
  - Review logs to pinpoint the source of the error.
  - Check that all dependencies are correctly installed and updated.
  - Validate that API endpoints and routes used in your code are specified correctly.

[Join our community Discord channel](https://discord.gg/TvgHDNEGWa).