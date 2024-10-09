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

## LLM-Specific Troubleshooting

### OpenAI
#### Common Error Messages:
- **Error 429: Rate limit exceeded**
  - **Solution:** Reduce the frequency of your API requests or consider upgrading your plan for higher limits.
- **Error 500: Internal server error**
  - **Solution:** Retry the request after some time as this might be a temporary issue.

### Claude
#### Common Error Messages:
- **Error: Model not found**
  - **Solution:** Double-check the model ID you're using and ensure that it is correct and available in your account.
- **Error 403: Forbidden**
  - **Solution:** Check your API key permission settings on Anthropic’s platform.

### Gemini
#### Common Error Messages:
- **Error: Invalid API key**
  - **Solution:** Ensure your API key is valid and has not expired.
- **Error 502: Bad Gateway**
  - **Solution:** This usually indicates a problem with the server request; try again later or report the issue if it persists.

[Join our community Discord channel](https://discord.gg/TvgHDNEGWa) for further support and assistance.