---
title: Actions
parent: Core Concepts
nav_order: 2
---

# Actions

Actions are responsible for performing specific operations to get inputs for a Generator or based on the generated output from a Generator.

You can think of actions as similar to tools in other agent frameworks. They encapsulate a single action and do not involve complex decision-making and are the executable units that bring the generated inputs and outputs to life.

## Creating Custom Actions

Understanding how to create custom actions is essential for extending the capabilities of your workflows. Here is a comprehensive guide to accomplishing this:

### Step 1: Define the Purpose of Your Action
Determine what operation your action will perform. It could be manipulating data, interacting with external APIs, or transforming inputs and outputs.

### Step 2: Set Up Your Development Environment
Ensure you have the necessary dependencies installed and set up in your environment.

### Step 3: Implement the Custom Action
Use the following template as a baseline for your custom action:

```ruby
module Sublayer
  module Actions
    class MyCustomAction < Base
      def initialize(parameters)
        @parameters = parameters
      end

      def call
        # Insert action logic here
      end
    end
  end
end
```

### Step 4: Integrate the Action into Your Workflow
- Ensure your action can be called by other components in your framework, such as Generators and Agents.
- Test the functionality to ensure it performs as expected.

### Example Workflow
Below is an example illustrating how to create a custom action that interacts with an API:

```ruby
module Sublayer
  module Actions
    class ApiInteractionAction < Base
      def initialize(api_url, query_params)
        @api_url = api_url
        @query_params = query_params
      end

      def call
        response = HTTParty.get(@api_url, query: @query_params)
        # Process the response
        puts response.body
      end
    end
  end
end
```

### Illustration of Workflow
It's beneficial to visualize how custom actions integrate into the larger architecture. Below is a schematic representing a custom action from creation to execution within a task or a generator:

```
[Define Purpose] -> [Set Up Environment] -> [Implement Action] -> [Integrate Into Workflow] -> [Execute & Test]
```

By following these guidelines, developers can expand the functionality of their applications by creating actions that are precisely tailored to their needs.

## Action Repository

Curious about what actions are already written and available to use in your project? We maintain a repository of community and AI-created Actions that can drop right into your project.

Check it out here: [Sublayer Actions Repository](https://github.com/sublayerapp/sublayer_actions)

## Try making your own Action:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-actions" width="100%" height="500px"></iframe>

## Examples:

- [WriteFileAction](https://github.com/sublayerapp/tddbot/blob/43297c5da9445bd6c8882d5e3876cff5fc6b2650/lib/tddbot/sublayer/actions/write_file_action.rb): Writes text to a specified file.
- [RunTestCommandAction](https://github.com/sublayerapp/tddbot/blob/43297c5da9445bd6c8882d5e3876cff5fc6b2650/lib/tddbot/sublayer/actions/run_test_command_action.rb): Runs a test command on the command line returning the output.
- [SpeechToTextAction](https://github.com/sublayerapp/rails_llm_voice_chat_example/blob/93300f268dde359b58c92a60db4b54d128d9d965/lib/sublayer/actions/speech_to_text_action.rb): Makes an API call to OpenAI's SpeechToText endpoint with audio data and returns text.
- [TextToSpeechAction](https://github.com/sublayerapp/rails_llm_voice_chat_example/blob/93300f268dde359b58c92a60db4b54d128d9d965/lib/sublayer/actions/text_to_speech_action.rb): Makes an API call to OpenAI's Speech Synthesis endpoint with text and returns audio data.

## Troubleshooting

For common issues and tips on troubleshooting with Actions, refer to our [Troubleshooting Guide](../troubleshooting.md).
