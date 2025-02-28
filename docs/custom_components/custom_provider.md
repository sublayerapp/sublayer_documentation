---
title: Custom Provider
parent: Custom Components
nav_order: 3
---
# Custom Provider

Creating a custom provider allows you to integrate different AI models into the Sublayer framework. By defining a new provider, you can customize how requests are made to the AI model and how responses are processed.

## Step-by-Step Guide to Creating a Custom Provider

1. **Define the Provider Class**
   - Start by creating a new Ruby class for your provider under the `Sublayer::Providers` module.
   - The class should have a `self.call` class method, which takes `prompt:` and `output_adapter:` as arguments.

2. **Setup API Requests**
   - Utilize libraries such as `HTTParty` to handle API requests.
   - Define the API endpoint URL and request parameters.

3. **Process API Responses**
   - Upon receiving a response, process the data to extract the necessary information as per your application's needs.

4. **Configuration**
   - Add your provider to the Sublayer configuration using `Sublayer.configuration.ai_provider`.

5. **Comprehensive Example**
   - Refer to existing provider implementations like `OpenAI`, `Claude`, and `Gemini` in the `lib/sublayer/providers` directory for an in-depth example.

## Example
```ruby
module Sublayer
  module Providers
    class CustomAI
      def self.call(prompt:, output_adapter:)
        response = HTTParty.post(
          "https://api.customai.com/process",
          body: {
            "prompt": prompt,
            "output": output_adapter.structure
          }.to_json,
          headers: { "Content-Type" => "application/json" }
        )

        response["result"]  # Example key to fetch data
      end
    end
  end
end
```

By following these steps, you can seamlessly integrate a new AI model into Sublayer, tailoring the provider to meet specific application requirements.