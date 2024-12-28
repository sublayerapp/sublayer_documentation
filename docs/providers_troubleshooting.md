---
title: Providers Troubleshooting
nav_order: 8
---

# Providers Troubleshooting

This section is dedicated to troubleshooting common issues faced when using different AI providers including OpenAI, Claude, and Gemini. Each subsection will help you diagnose and solve potential problems related to API keys, connectivity, response handling, and more.

## OpenAI

### Common Issues

1. **Authentication Errors:**
   - Ensure that the `OPENAI_API_KEY` environment variable is correctly set. Visit [OpenAI](https://openai.com/product) to obtain a new API key if necessary.

2. **Exceeding Token Limit:**
   - If your request exceeds the token limit, try simplifying your prompt or dividing the task into smaller parts.

3. **Network Connectivity Problems:**
   - Check your internet connection and ensure that any firewalls allow outbound traffic to OpenAI's servers.

## Claude

### Common Issues

1. **API Throttling:**
   - Claude may throttle requests if they are too frequent. Implement exponential backoff and retry mechanisms.

2. **Unsupported Model:**
   - Verify that the specified model is supported and correctly spelled in `ANTHROPIC_API_KEY` settings.

3. **Data Formatting Errors:**
   - Ensure your data adheres to Claude's input data format requirements.

## Gemini

### Common Issues

1. **Beta Features and Instability:**
   - As some Gemini features are in beta, they might be unstable. It is advised to not use them in production environments.

2. **API Key Verification:**
   - Confirm that `GEMINI_API_KEY` is valid and has the necessary permissions.

3. **Function Call Errors:**
   - Double-check the JSON structure for function calls according to Gemini API specifications.

### Linking Back

Refer back to the main [Providers Overview](/docs/advanced_config.md) for detailed setup instructions.