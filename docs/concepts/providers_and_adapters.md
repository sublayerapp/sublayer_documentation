---
layout: default
title: Understanding Sublayer Providers and Output Adapters
nav_order: 4
---

# Understanding Sublayer Providers and Output Adapters

This document provides a comprehensive overview of the AI providers supported by Sublayer and the output adapters available to format LLM outputs efficiently.

## AI Providers Supported by Sublayer
Sublayer currently supports the following AI providers:

### OpenAI
- **Usage:** Default provider.
- **Models Available:**
  - `gpt-4o`
- **Setup:** Set your `OPENAI_API_KEY` environment variable. Visit [OpenAI](https://openai.com/product) to get an API key.
- **Configuration Example:**
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::OpenAI
  Sublayer.configuration.ai_model = "gpt-4o"
  ```

### Claude
- **Usage:** Advanced LLM from Anthropic.
- **Models Available:**
  - `claude-3-5-sonnet-20240620`
- **Setup:** Set your `ANTHROPIC_API_KEY` environment variable. Visit [Anthropic](https://anthropic.com/) to get an API key.
- **Configuration Example:**
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Claude
  Sublayer.configuration.ai_model = "claude-3-5-sonnet-20240620"
  ```

### Gemini [UNSTABLE]
- **Usage:** Experimental Google AI with function-calling capabilities.
- **Models Available:**
  - `gemini-1.5-flash-latest`
- **Setup:** Set your `GEMINI_API_KEY` environment variable. Visit [Google AI Studio](https://ai.google.dev/) to get an API key.
- **Configuration Example:**
  ```ruby
  Sublayer.configuration.ai_provider = Sublayer::Providers::Gemini
  Sublayer.configuration.ai_model = "gemini-1.5-flash-latest"
  ```

## Output Adapters
Output adapters in Sublayer help in structuring and formatting the outputs received from Language Learning Models (LLMs).

### SingleString
- **Description:** Outputs a single string.
- **Example Use:**
  ```ruby
  llm_output_adapter type: :single_string,
    name: "generated_code",
    description: "The generated code in the requested language"
  ```

### ListOfStrings
- **Description:** Outputs a list of strings.
- **Example Use:**
  ```ruby
  llm_output_adapter type: :list_of_strings,
    name: "suggestions",
    description: "List of keyword suggestions"
  ```

### NamedStrings
- **Description:** Outputs named strings for structured data.
- **Example Use:**
  ```ruby
  llm_output_adapter type: :named_strings,
    name: "product_description",
    description: "Generate product descriptions",
    attributes: [
      { name: "short_description", description: "A brief one-sentence description of the product" },
      { name: "long_description", description: "A detailed paragraph describing the product" }
    ]
  ```

### StringSelectionFromList
- **Description:** Selects a string from a provided list of options.
- **Example Use:**
  ```ruby
  llm_output_adapter type: :string_selection_from_list,
    name: "route",
    description: "A route selected from the list",
    options: :available_routes
  ```

This comprehensive guide highlights how to set up the different providers and utilize the output adapters to ensure that the AI-generated outputs are correctly formatted according to user requirements.