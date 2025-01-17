---
layout: default
title: Troubleshooting
nav_order: 7
has_toc: true
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


## Installation on Non-Standard Systems

This section provides guidance for troubleshooting installation issues on non-standard systems, such as Windows or unique Linux setups.

### Common Issues on Windows

#### Problem: Ruby Path Not Set Correctly
**Solution:** Ensure the Ruby binaries are added to your system's PATH. You can do this by adding the Ruby 'bin' folder to your PATH environment variable.

#### Problem: Bundler Errors due to SSL
**Solution:** You might need to update the SSL certificates. Check the [Ruby on Windows guide](https://rubyinstaller.org/add-ons/openssl.html) for how to correctly set up SSL certificates.
  
#### Problem: Command Line Arguments not supported
**Solution:** Ensure you are using a command prompt that supports required arguments, such as PowerShell or Git Bash.

### Common Issues on Linux

#### Problem: Incorrect Ruby Version
**Solution:** Check for the required Ruby version in your project's Gemfile. Use a tool like `rbenv` or `rvm` to manage and install the correct Ruby version.

#### Problem: Gem Installation Fails
**Solution:** Ensure you have the necessary build tools and libraries. This might include packages like `build-essential` and `libssl-dev` for Ubuntu systems.

[Join our community Discord channel](https://discord.gg/TvgHDNEGWa).