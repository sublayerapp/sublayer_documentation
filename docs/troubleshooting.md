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

## Provider-Specific Setup Issues

### OpenAI Setup Issues

**Environment Variable Misconfigurations**
- **Problem:** `OPENAI_API_KEY` not found or incorrect.
- **Solution:** Double-check that you have set the `OPENAI_API_KEY` environment variable correctly in your shell or environment configuration file.

**Dependency Issues**
- **Problem:** Incompatibility with gem versions.
- **Solution:** Ensure the gem versions in your `Gemfile` are compatible with OpenAI API dependencies.

### Claude Setup Issues

**Environment Variable Misconfigurations**
- **Problem:** `ANTHROPIC_API_KEY` not found or incorrect.
- **Solution:** Verify that the `ANTHROPIC_API_KEY` is set correctly and that there are no typos.

**Dependency Mismatches**
- **Problem:** Incorrect version of dependencies.
- **Solution:** Use the recommended versions of dependencies as per the official documentation.

### Gemini Setup Issues

**Environment Variable Misconfigurations**
- **Problem:** `GEMINI_API_KEY` missing or incorrect.
- **Solution:** Ensure you set the `GEMINI_API_KEY` properly in your environment settings.

**Version Mismatches**
- **Problem:** Mismatched dependency versions can lead to errors.
- **Solution:** Cross-check the versions of dependencies required for Gemini with those listed in your `Gemfile.lock`.

---

[Join our community Discord channel](https://discord.gg/TvgHDNEGWa) for more help and support.