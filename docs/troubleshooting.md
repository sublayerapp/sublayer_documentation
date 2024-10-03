---
layout: default
title: Troubleshooting
nav_order: 7
---

# Troubleshooting

This section addresses common issues users may encounter while using Sublayer, including function call errors, exceeding token limits, and others noted in the test cases.

## Function Call Errors with OpenAI and Claude

Function call errors can occur when interacting with AI models such as OpenAI and Claude. These errors might be caused due to incorrect or malformed function requests or requests that do not align with the expected input schema.

### How to resolve:
- Double-check the request payload being sent to ensure it matches the expected input requirements.
- Use the logging and debugging tools provided within Sublayer to identify exact points of failure within your requests.
- Consult the API documentation for each provider to ensure compliance with their latest guidelines and requirements.

## Exceeding Token Limits

Token limits can be exceeded during requests to AI models, which leads to incomplete responses or errors.

### How to resolve:
- Break down large requests into smaller, more manageable parts.
- Monitor the token usage during your interactions to make informed adjustments.
- Consider optimizing the content being sent to focus on key points instead of verbose descriptions.

## General Debugging Tips

- Utilize Sublayer's configuration and logging to fine-tune operations and catch issues early on.
- Regularly update your API keys and ensure all environment configurations are correctly set.
- Join community forums or support channels for troubleshooting advice and peer support.

By addressing these typical issues, you can enhance the reliability and performance of your applications using Sublayer.