---
title: Advanced Config
nav_order: 6
---
# Advanced Config

After installing Sublayer, you can choose between any of the available LLM providers we support.

## OpenAI (Default)

Set your `OPENAI_API_KEY` environment variable. (Visit [OpenAI](https://openai.com/product) to get an API key.)

### Setup Process
- Ensure you have the OpenAI gem and necessary dependencies installed in your Ruby environment.
- Export your API key as an environment variable: `export OPENAI_API_KEY="your-api-key"`.

### Model Selection
- Use the GPT models you need by configuring them in your Sublayer project, for example:
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
  Sublayer.configuration.ai_model = "gpt-4o"
  ```

### Troubleshooting
- **Common Errors**: If you encounter issues with authentication or model access, verify your API key and its permissions.

![OpenAI Configuration Diagram](../assets/openai_config.png)

## Claude

Supported Models: Claude 3+ Opus, Claude 3+ Haiku, Claude 3+ Sonnet

Set your `ANTHROPIC_API_KEY` environment variable. (Visit [Anthropic](https://anthropic.com/) to get an API key.)

### Setup Process
- Install any required Anthropic-related gems.
- Make sure to export your API key: `export ANTHROPIC_API_KEY="your-api-key"`.

### Model Selection
- Available models can be configured in your project settings:
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
  Sublayer.configuration.ai_model = "claude-3-opus-20240229"
  ```

### Troubleshooting
- **Access Issues**: Check API key format and validity if the service isn’t responding.

![Claude Configuration Diagram](../assets/claude_config.png)

## Google (Gemini)

Set your `GEMINI_API_KEY` environment variable. (Visit [Google AI Studio](https://ai.google.dev/) to get an API key.)

### Setup Process
- Ensure all Google API related dependencies are installed and configured.
- Export the environment variable using: `export GEMINI_API_KEY="your-api-key"`.

### Model Selection
- Choose between models offered by Google Gemini, update the config as follows:
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
  Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
  ```

### Troubleshooting
- **Model Not Found**: Ensure your API key has access to the specific models you are trying to use.

![Gemini Configuration Diagram](../assets/gemini_config.png)

---

This guide provides a comprehensive view to assist with setting up different LLM providers, ensuring a smoother integration with your Sublayer projects. For further assistance, make sure to visit each provider's troubleshooting resources or our [forum](https://community.sublayer.com).