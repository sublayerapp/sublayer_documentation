---
title: Actions
parent: Core Concepts
nav_order: 2
---

# Actions

Actions are responsible for performing specific operations to get inputs for a Generator or based on the generated output from a Generator.

You can think of actions as similar to tools in other agent frameworks. They encapsulate a single action and do not involve complex decision-making and are the executable units that bring the generated inputs and output to life.

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

## Walkthrough Example

This walkthrough will guide you through creating a custom Action. This example is beneficial for new users wanting to implement their own actions in a Ruby project using the Sublayer framework.

**Step 1: Setup**
- Ensure Sublayer is installed in your environment.
- Create a new Ruby file for your action, e.g., `my_custom_action.rb`.

**Step 2: Define the Action Class**
- Define a class that inherits from `Sublayer::Actions::Base`.

  ```ruby
  class MyCustomAction < Sublayer::Actions::Base
    def initialize(input_param)
      @input_param = input_param
    end

    def call
      # Implement action logic here
    end
  end
  ```

**Step 3: Implement Logic**
- Add initialization parameters if your action needs specific data.
- Implement the `call` method with the action's operational logic.

**Step 4: Real-world Application**
- Integrate your action into larger workflows within your Ruby application.
- Use it to automate data processing, API communication, or response handling from generators.

## Troubleshooting

For common issues and tips on troubleshooting with Actions, refer to our [Troubleshooting Guide](../troubleshooting.md).
