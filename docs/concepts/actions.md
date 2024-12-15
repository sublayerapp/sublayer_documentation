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

## Example: Create and Use an Action

Here’s how you can create a simple action that logs a message and integrate it with a generator.

### Step 1: Define the Action

Create a new class inheriting from `Sublayer::Actions::Base`.

```ruby
module Sublayer
  module Actions
    class LogMessageAction < Base
      def initialize(message)
        @message = message
      end

      def call
        puts @message
      end
    end
  end
end
```

### Step 2: Use the Action in a Workflow

Instantiate your action and use it within your application’s workflow.

```ruby
# Initialize the action
action = Sublayer::Actions::LogMessageAction.new("This is a test log message.")

# Call the action to perform its task
action.call
```

### Step 3: Integrate with a Generator

Actions can be effectively combined with generators to handle outputs or prepare inputs.

```ruby
# Define your generator
class ExampleGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string,
    name: "generated_content",
    description: "Simple content generation"

  def initialize
  end

  def prompt
    "Generate a simple message."
  end
end

# Use the generator and action together
output = ExampleGenerator.new.generate
Sublayer::Actions::LogMessageAction.new(output).call
```

## Troubleshooting

For common issues and tips on troubleshooting with Actions, refer to our [Troubleshooting Guide]({% link docs/troubleshooting.md %}).

## Examples:

- [WriteFileAction](https://github.com/sublayerapp/tddbot/blob/43297c5da9445bd6c8882d5e3876cff5fc6b2650/lib/tddbot/sublayer/actions/write_file_action.rb): Writes text to a specified file.
- [RunTestCommandAction](https://github.com/sublayerapp/tddbot/blob/43297c5da9445bd6c8882d5e3876cff5fc6b2650/lib/tddbot/sublayer/actions/run_test_command_action.rb): Runs a test command on the command line returning the output.
- [SpeechToTextAction](https://github.com/sublayerapp/rails_llm_voice_chat_example/blob/93300f268dde359b58c92a60db4b54d128d9d965/lib/sublayer/actions/speech_to_text_action.rb): Makes an API call to OpenAI's SpeechToText endpoint with audio data and returns text.
- [TextToSpeechAction](https://github.com/sublayerapp/rails_llm_voice_chat_example/blob/93300f268dde359b58c92a60db4b54d128d9d965/lib/sublayer/actions/text_to_speech_action.rb): Makes an API call to OpenAI's Speech Synthesis endpoint with text and returns audio data.

---

## Troubleshooting

For common issues and tips on troubleshooting with Actions, refer to our [Troubleshooting Guide]({% link docs/troubleshooting.md %}).