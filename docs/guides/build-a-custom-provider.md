---
title: Creating Custom Providers
parent: Guides
---

# Creating Custom Providers

This guide provides a step-by-step approach to creating custom providers in Sublayer, enabling developers to integrate non-standard or private LLMs into their projects.

## Introduction
Integrating custom providers into Sublayer allows users to extend its capabilities with unique LLMs that fit specific project needs. Whether you're working with private models or other language models not directly supported, this guide will help you set up your integration.

## Steps to Create a Custom Provider

1. **Define the Provider Interface:**
   - Create a class under the `Sublayer::Providers` module.
   - Implement a `.call` method to handle the interaction with your LLM API.

   ```ruby
   module Sublayer
     module Providers
       class CustomProvider
         def self.call(prompt:, output_adapter:)
           # Your API interaction code here
         end
       end
     end
   end
   ```

2. **Configure the Provider:**
   - Assign your provider to the Sublayer configuration.

   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::CustomProvider
   Sublayer.configuration.ai_model = "your-model-name"
   ```

3. **Handle API Requests:**
   - Use a library like HTTParty or Net::HTTP to send requests to your LLM API.
   - Process the response to fit the expected output format of Sublayer generators.

   ```ruby
   response = HTTParty.post("https://api.your-llm.com/v1/query", body: { prompt: prompt }.to_json)
   parsed_response = JSON.parse(response.body)
   return parsed_response['desired_output_key']
   ```

4. **Error Handling and Logging:**
   - Implement appropriate error handling.
   - Use Sublayer's logging mechanism to log interactions for debugging purposes.

   ```ruby
   begin
     # code that might cause an exception
   rescue => e
     Sublayer.configuration.logger.log(:error, "Custom provider error: ", error: e.message)
   end
   ```

## Example
Consider an example of a provider for a fictional LLM API:

```ruby
module Sublayer
  module Providers
    class FictionalLLM
      def self.call(prompt:, output_adapter:)
        # Example code to interact with the fictional API and process response
      end
    end
  end
end
```

Integrate this provider with your configuration and use it in your projects as needed.

## Conclusion
By creating custom providers, developers can leverage the flexibility of Sublayer to work with a variety of LLMs, enhancing the scope of what their projects can achieve. For further questions or support, feel free to reach out to the Sublayer community.