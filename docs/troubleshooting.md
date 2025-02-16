---
layout: default
title: Troubleshooting
nav_order: 7
has_toc: true
---

# Troubleshooting

This document consolidates common error scenarios and troubleshooting tips related to the Sublayer framework, particularly focusing on issues with providers (Claude, Gemini) and project generation.

---

## Table of Contents
- [Common Error Scenarios](#common-error-scenarios)
  - [API Key Errors](#api-key-errors)
  - [Dependency Conflicts](#dependency-conflicts)
  - [Network Issues](#network-issues)
  - [Provider Specific Errors](#provider-specific-errors)
  - [Project Generation Issues](#project-generation-issues)
- [Join our Discord](#join-our-discord)

---

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

### 4. Provider Specific Errors
**Claude:** Ensure that your requests comply with Claude’s API specifications and that your account supports the tool functions involved.  
**Gemini:** Be aware that Gemini's function calling API is in beta and may have unstable features. Always refer to the latest documentation.

### 5. Project Generation Issues
**Problem:** Errors when generating projects or components using the CLI.  
**Solution:** Ensure that you have the latest version of the Sublayer gem installed. Check for typos or missing parameters in your command inputs.

---

## Join our Discord
[Join our community Discord channel](https://discord.gg/TvgHDNEGWa) for assistance, to share your experiences, or to discuss ideas related to the Sublayer framework.
