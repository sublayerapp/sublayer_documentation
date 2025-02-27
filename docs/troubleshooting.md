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

## Common Configuration Issues

### Configuration Files
**Problem:** Errors in configuration files leading to unexpected behavior.  
**Solution:** Double-check the syntax and structure of your configuration files, ensuring all required fields are correctly set.

### Environment Variables
**Problem:** Environment variables not set correctly or missing.  
**Solution:** Verify that all necessary environment variables are set and available to your application. Use a tool like `env` or check your shell's configuration files.

### Model Integration
**Problem:** Issues when integrating with different AI models.  
**Solution:** Ensure the correct provider and model names are used in your configuration. Refer to provider-specific documentation for any additional setup requirements.

## Examples

### Example Error Message
```plaintext
Error: Missing required environment variable ANTHROPIC_API_KEY.
```
**Solution:** Ensure you've set the `ANTHROPIC_API_KEY` in your environment.

### Example Error Message
```plaintext
Error: Bundler could not find compatible versions for gem "rails":
```
**Solution:** Modify your `Gemfile` to use compatible versions of the `rails` gem, then run `bundle install` again.

[Join our community Discord channel](https://discord.gg/TvgHDNEGWa).