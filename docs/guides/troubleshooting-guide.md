---
layout: default
title: Troubleshooting Guide
nav_order: 6
permalink: /docs/guides/troubleshooting-guide/
---

# Troubleshooting Guide

This guide aims to assist you in diagnosing and solving common issues with the Sublayer framework. Below are solutions and workarounds based on frequent errors observed in test files and error-handling implementations.

## Setup Issues

- **Invalid API Keys:** Ensure your API keys for OpenAI, Gemini, or Anthropic are correctly set in your environment variables. Revisit the setup instructions provided in the documentation.

- **Configuration Errors:** Verify your configuration files are correctly set up, including any YAML or JSON files. Compare against example configurations if necessary.

## API Connectivity Problems

- **Timeouts and Latency:** Check your network connection and consider increasing timeout settings in your API client if requests are frequently timing out.

- **Authentication Failures:** Double-check your API key validity and permissions. Use test environments to ensure your keys are working as expected.

## Agent Configuration

- **Custom Agent Failures:** Review your agent definitions for any logical errors in triggers or actions. Refer to the examples provided in the documentation to correct implementation mistakes.

- **Unknown States:** Use logging generously to understand the flow and state of your agents before they fail. This can provide insight into erroneous conditions or unexpected behavior.

For further details on each section, revisit related documentation or community forums.