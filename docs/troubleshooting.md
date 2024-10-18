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

## Project Setup Troubleshooting

### Overview  
Setting up the project environment correctly is crucial for smooth installation and execution. Refer to the scenarios outlined in the `spec/integration` folder to understand common setups and issues.

### Common Setup Issues

#### 1. Missing Dependencies
**Error Message:** `LoadError: cannot load such file`  
**Solution:** Verify that all required gems are installed by running `bundle install`. Check the `Gemfile` for any missing dependencies.

#### 2. Incorrect Ruby Version
**Error Message:** `Your Ruby version is xxx, but your Gemfile specified yyy`  
**Solution:** Ensure the Ruby version matches the version specified in the `.ruby-version` file or the `Gemfile.lock`. Use a version manager like RVM or rbenv to switch to the correct version.

#### 3. Database Connection Failures
**Error Message:** `PG::ConnectionBad: could not connect to server`  
**Solution:** Check your database configuration settings in `config/database.yml`. Ensure that your database server is running and accessible.

### Integration Tests as a Setup Reference
Review the test scenarios in the `spec/integration` directory for examples of successful setups and configurations. These tests can provide insights into expected environments and dependencies needed for a successful project setup.

### Preventive Measures
- Regularly update dependencies with `bundle update`.
- Use environment variables to manage sensitive data such as API keys and database credentials.
- Document any manual setup steps in a `SETUP.md` file to ease the onboarding of new developers.

[Join our community Discord channel](https://discord.gg/TvgHDNEGWa).