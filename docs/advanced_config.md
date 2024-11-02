---
title: Advanced Config
nav_order: 6
---
# Advanced Configuration

After installing Sublayer, you can choose between any of the available LLM providers we support.

---

## OpenAI (Default)

For the default provider...

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
Sublayer.configuration.ai_model = "gpt-4o"
```

Ensure to set your `OPENAI_API_KEY` environment variable. 

**Error Handling:** If the API key is incorrect or missing, the provider will not authenticate. Regularly check for updates in API usage.

Usage:

```ruby
response = Sublayer::Providers::OpenAI.call(...)
if response.error?
  raise "Error: \\#{response.error_message}"
end
```

---

## Anthropic

For Anthropic's Claude models:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
Sublayer.configuration.ai_model = "claude-3-opus-20240229"
```

Set your `ANTHROPIC_API_KEY`. 

**Error Handling:** Key might expire; ensure its validity periodically.

Usage:

```ruby
response = Sublayer::Providers::Claude.call(...)
if response.timeout?
  retry unless times > 3
end
```

---

## Google

For Google's Gemini:

```ruby
Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
```

Set your `GEMINI_API_KEY`.

**Caution:** This feature is experimental, ensure to use it in non-critical setups. Watch official channels for stability indicators.

Common issues include...

### Error Responses

Check the response codes...

```ruby
begin
  response = Sublayer::Providers::Gemini.call(...)
rescue StandardError => e
  puts "An error occurred: \\#{e.message}"
end
```