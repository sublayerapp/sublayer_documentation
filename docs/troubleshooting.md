---
layout: default
title: Troubleshooting
nav_order: 7
---

# Troubleshooting

This document provides common error scenarios and troubleshooting tips to assist developers in resolving issues and understanding potential pitfalls with solutions. For more detailed guidance, see the comprehensive [Troubleshooting Guide]({% link docs/guides/troubleshooting-guide.md %}).

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

### 4. Test Failures
**Problem:** Repeated test failures during development or setup.  
**Solution:** Diagnose issues by using the tests directory as a guide to identify what sections of the codebase fail and start debugging based on logs and specifications.

### 5. Setup Issues
**Problem:** Initial setup fails or behaves unexpectedly.  
**Solution:** Review setup guides for common issues and ensure your environment aligns with the documented requirements.