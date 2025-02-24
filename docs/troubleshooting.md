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

## Provider-specific Issues

### OpenAI
**Problem:** Exceeding token limits or malformed API responses.  
**Solution:** Ensure your requests adhere to the token limits specified by OpenAI. If malformed responses are encountered, consider rephrasing prompts or breaking down requests into smaller tasks.

### Gemini
**Problem:** Handling experimental or unstable API features leading to unexpected errors.
**Solution:** Keep up-to-date with Gemini's API changes. Handle exceptions specifically for known API quirks, and consider using more stable features.

### Anthropic (Claude)
**Problem:** Token limit excess or function calling issues.  
**Solution:** Use smaller data chunks or more concise prompts to avoid breaching token limits. For function-call-related errors, ensure your request format strictly adheres to API specifications.

[Join our community Discord channel](https://discord.gg/TvgHDNEGWa).