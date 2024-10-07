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

### 2. Network Issues
**Problem:** Network-related errors when calling external APIs.  
**Solution:** Check your internet connection, ensure that the API service is not down, and verify that your system's firewall settings allow outbound traffic on required ports.

### 3. Configuration Errors
**Problem:** Application fails to load with configuration errors.  
**Solution:** Ensure the configuration file `_config.yml` is properly formatted and includes all necessary settings as per the documentation.

### 4. Dependency Conflicts
**Problem:** Conflicts between gem dependencies leading to bundling failures.  
**Solution:** Check the `Gemfile.lock` for dependency versions and resolve conflicts by updating or downgrading gems as necessary.

## Tips for Effective Troubleshooting
- Always check the documentation for specific requirements and examples.
- Use verbose logging to capture detailed information about the application's execution flow and errors.
- When an error occurs, review the entire stack trace to identify where the actual error originated.

For more help, refer to the additional documentation or join our community Discord channel.
