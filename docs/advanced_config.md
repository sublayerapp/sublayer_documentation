---
title: Advanced Config
nav_order: 6
---
# Advanced Config

After installing Sublayer, you can choose between any of the available LLM providers we support.

## OpenAI (Default)

Set your `OPENAI_API_KEY` environment variable. (Visit [OpenAI](https://openai.com/product) to get an API key.)

### Configuration Example
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

### Potential Pitfalls
- Ensure your API key is set as an environment variable.
- Make sure you have sufficient quota in your OpenAI account.

### Troubleshooting Tips
- Verify network connection if API calls are failing.
- Check OpenAI service status if unexpected errors occur.

## Claude

Supported Models: Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)

### Configuration Example
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

### Potential Pitfalls
- API key should be valid and active.
- Monitor usage limits and ensure they're not exceeded.

### Troubleshooting Tips
- Confirm that the Claude API endpoint is reachable.
- Check for any updates in the Anthropic API specifications that might affect your setup.

## Gemini

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

### Configuration Example
```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

### Potential Pitfalls
- Ensure your API key matches the required permissions.
- The Gemini API may be unstable in beta; proceed with caution.

### Troubleshooting Tips
- Verify the endpoint and version used for API requests.
- Use logging to capture request and response data for debugging.

References for configuration can be found in the `lib/sublayer/providers` directory, which contains implementation details for each provider.