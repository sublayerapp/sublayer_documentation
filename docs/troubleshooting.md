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

---

## Model-Specific Troubleshooting

### OpenAI Integration Issues
- **Problem:** API request fails with a 401 status.  
  **Solution:** Verify the `OPENAI_API_KEY` is set correctly and has the right permissions.
- **Problem:** Incompatible model version error.  
  **Solution:** Ensure that the model you are using is supported by checking [OpenAI Model Documentation](https://openai.com/docs/models).

### Claude Integration Issues
- **Problem:** Authentication error.  
  **Solution:** Check that the `ANTHROPIC_API_KEY` is correctly configured in your environment variables.
- **Problem:** Rate limits are exceeded quickly.  
  **Solution:** Monitor your API usage and consider upgrading your plan if you regularly hit the limit.

### Gemini Integration Issues
- **Problem:** Function calling features not working as expected.  
  **Solution:** Ensure that you are using the correct API version and check for updates since Gemini's API features are in beta.

---

## Frequently Asked Questions (FAQ)

**What can I do if I get an API rate limit error?**
- Review your API usage and ensure that you are not exceeding the specified limits for your account. Consider batching requests or optimizing your API call frequency.

**I need help with a specific model error. Where should I look?**
- Refer to the specific model documentation for detailed troubleshooting steps and ensure your API calls match the required parameters and structure.

[Join our community Discord channel](https://discord.gg/TvgHDNEGWa).