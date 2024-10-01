---
title: Run Llama3.1 with Ollama
parent: Guides
---
# Run Llama3.1 locally with Ollama

1. [Install Ollama](#install-ollama)
2. [Download and run the model](#download-and-run-llama3.1)
3. [Adding a custom Provider](#adding-a-ollama-llama3.1-provider)
4. [Basic Demo](#full-demo)
5. [Building a custom Provider](#building-a-custom-provider)

<iframe width="560" height="315" src="https://www.youtube.com/embed/TPSWeFrN67w?si=V1e3epL1NNrfTGzB" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Install [Ollama](https://ollama.com/)
* Visit [https://ollama.com/](https://ollama.com/) and download ollama

## Download and run [llama3.1](https://ollama.com/library/llama3.1)
```bash
ollama run llama3.1
```

## Adding a Ollama Llama3.1 Provider
To add a provider to an existing project:

1. Add to Gemfile:
    ```ruby
    gem 'sublayer', '~>0.2.0'
    ```
2. Run:
    ```bash
    bundle install
    ```
3. Add the provider:
    ```ruby
    module Sublayer
      module Providers
        class OllamaLlama31
          def self.call(prompt:, output_adapter:)
            response = HTTParty.post(
              "http://localhost:11434/api/chat",
              body: {
                "model": 'llama3.1',
                "messages": [
                  {
                    "role": "user",
                    "content": prompt
                  }
                ],
                "stream": false,
                "tools": [
                  {
                    "type": "function",
                    "function": {
                      "name": 'response',
                      "parameters": {
                        "type": "object",
                        "properties": output_adapter.format_properties,
                        "required": output_adapter.format_required
                      }
                    }
                  }
                ]
              }.to_json
            )

            message = response['message']

            raise "No function called" unless message["tool_calls"].length > 0

            function_body = message.dig("tool_calls", 0, "function", "arguments")
            function_body[output_adapter.name]
          end
        end
      end
    end
    ```
4. Add to your configuration file:
    ```ruby
    Sublayer.configuration.ai_provider = Sublayer::Providers::OllamaLlama31
    ```
5. Build a sublayer generator:
<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators" width="100%" height="500px"></iframe>
6. Use in your code:
    ```ruby
    MyGenerator.new(attributes).generate
    ```

## Full Demo
Let's make a ruby project to generate Dr. Seuss styled short poems

```bash
# bash
mkdir dr_seuss_poem_maker
cd dr_seuss_poem_maker
touch Gemfile
touch ollama_llama_3_1.rb
touch dr_seuss_poem_generator.rb
touch dr_seuss_poem_maker.rb
```

```ruby
# Gemfile
source 'https://rubygems.org'
gem 'sublayer', '~>0.2.0'
```

```bash
# bash
bundle install
```

* Build a sublayer generator with the following description:
    * "generator that writes poems in the style of Dr. Seuss"
<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=false" width="100%" height="500px"></iframe>

* Paste the result from above into `dr_seuss_poem_generator.rb` (rename if desired)

* Paste the following Provider into your project (to see how to build this or any custom provider go to [Build a Custom Provider](#build-custom-provider))

  ```ruby
  class OllamaLlama31
    def self.call(prompt:, output_adapter:)
      response = HTTParty.post(
        "http://localhost:11434/api/chat",
        body: {
          "model": 'llama3.1',
          "messages": [
            {
              "role": "user",
              "content": prompt
            }
          ],
          "stream": false,
          "tools": [
            {
              "type": "function",
              "function": {
                "name": 'response',
                "parameters": {
                  "type": "object",
                  "properties": output_adapter.format_properties,
                  "required": output_adapter.format_required
                }
              }
            }
          ]
        }.to_json
      )

      message = response['message']

      raise "No function called" unless message["tool_calls"].length > 0

      function_body = message.dig("tool_calls", 0, "function", "arguments")
      function_body[output_adapter.name]
    end
  end
  ```

* Write the following code in `dr_seuss_poem_maker.rb`:

  ```ruby
  # dr_seuss_poem_maker.rb
  require 'sublayer'
  require_relative 'dr_seuss_poem_generator'
  require_relative 'ollama_llama_3_1'

  Sublayer.configuration.ai_provider = OllamaLlama31

  puts DrSeussPoemGenerator.new.generate
  ```

* run your code:

  ```bash
  ruby dr_seuss_poem_maker.rb
  ```

## Building a Custom Provider
<iframe width="560" height="315" src="https://www.youtube.com/embed/4Trn-I6Ew1I?si=z-lBwGc617vPgdDc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

* Sublayer Gem comes with httparty
* Add a class method `.call` with two named parameters: `prompt:` and `output_adapter:`
* Find the url endpoint you need for llm chat completions
* Find the request format for function calling
* If no function calling exists [click here to find an example provider of custom response formatting](https://github.com/sublayerapp/sublayer/blob/0.0/lib/sublayer/providers/local.rb)
* Take the response and parse for the desired value