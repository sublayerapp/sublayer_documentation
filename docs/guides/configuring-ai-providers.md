---
title: Configuring AI Providers
parent: Guides
---
# Configuring AI Providers

Sublayer supports multiple AI providers. This guide walks you through setting up and using OpenAI, Gemini, and Claude with Sublayer. Each provider has its unique features and setup requirements.

## OpenAI

OpenAI is the default provider. To configure Sublayer to use OpenAI, ensure your environment is set up with the OpenAI API key.

```shell
export OPENAI_API_KEY="your-api-key"
```

Then configure Sublayer:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

### Example Usage

```ruby
require 'sublayer'

class YourGenerator < Sublayer::Generators::Base
  # Your generator logic here
end
```

## Gemini

Gemini is still in beta, with function calling features in experimental stages. Be cautious when using it for production.

Set your API key:

```shell
export GEMINI_API_KEY="your-api-key"
```

Configure Sublayer:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-pro"
```

### Example Usage

```ruby
require 'sublayer'

class GeminiGenerator < Sublayer::Generators::Base
  # Your generator logic tailored for Gemini
end
```

## Claude

Claude offers models tailored for different tasks. Set up your environment with the Claude API key:

```shell
export ANTHROPIC_API_KEY="your-api-key"
```

Configure Sublayer:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
```

### Example Usage

```ruby
require 'sublayer'

class ClaudeGenerator < Sublayer::Generators::Base
  # Your generator logic designed for Claude
end
```

## Conclusion

Selecting the right AI provider depends on your project requirements and the specific features of each LLM. By following the steps above, you can easily configure and switch between different providers in Sublayer.