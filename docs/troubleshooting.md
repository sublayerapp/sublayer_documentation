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

[Join our community Discord channel](https://discord.gg/TvgHDNEGWa).

### 4. Common Error Messages in Sublayer's Logging Framework

**Error Message:** `API key missing or invalid`.  
**Solution:** Double-check the environment variables for the correct API keys.

**Error Message:** `Dependency version mismatch`.  
**Solution:** Confirm that all required gems are correctly listed in the `Gemfile` and match those in `Gemfile.lock`. Use `bundle update` to resolve version conflicts.

**Error Message:** `Network connectivity issue with LLM provider`.  
**Solution:** Ensure your network connection is active and the provider's service is not experiencing downtime.