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

### 4. Version Mismatches
**Problem:** Feature or method not found errors due to version mismatches.  
**Solution:** Verify that all integrated services and dependencies are using compatible versions. Check documentation for version requirements and consider upgrading or downgrading to match.

### 5. Provider-specific Errors
**Problem:** Errors that occur only with specific AI providers, such as rate limits or request/response formats.  
**Solution:** Refer to the provider's documentation for specific error messages and their meanings. Implement error-handling strategies such as retries or fallbacks.

[Join our community Discord channel](https://discord.gg/TvgHDNEGWa).
