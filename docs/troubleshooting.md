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

---------------

## Provider-Specific Issues

### Gemini Integration
- **Problem:** Inconsistent response format.  
  **Solution:** Ensure you are using the latest version of the API and check for any breaking changes in the release notes. If inconsistency persists, consider downgrading to a stable version of the API.
- **Problem:** Authentication failures even with correct API key.  
  **Solution:** Regenerate the API key from the Google AI Studio dashboard and update the environment variable.

### Anthropic Integration
- **Problem:** Receiving null or empty responses.  
  **Solution:** Ensure you are sending a valid prompt and reduce the complexity of the request if hitting token limits. Verify model availability and versioning.
- **Problem:** API request limits exceeded.  
  **Solution:** Monitor usage against your subscription level and consider increasing your plan if you're frequently hitting limits.

---------------

## Real-World Scenarios and Solutions

### Scenario
During setup, a developer frequently hits a network error when communicating with AI providers.

**Solution:** This could be due to a firewall blocking outbound requests or DNS configuration issues. Ensure that your DNS is properly configured, and your firewall settings permit traffic to the following IP ranges and ports used by your AI providers. Check provider documentation for specific networking configurations.

### Scenario
Configurations seem correct but integration still fails after updating dependencies.

**Solution:** Double-check any recent gem updates for compatibility issues. If issues persist, consider rolling back to a previous stable state and updating gems one at a time to isolate the problematic dependency.

[Join our community Discord channel](https://discord.gg/TvgHDNEGWa) for further assistance.