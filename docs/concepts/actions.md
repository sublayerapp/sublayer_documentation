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

## Usage Examples

To illustrate how actions work in a practical setting, let's consider using the WriteFileAction.

### WriteFileAction Example
The `WriteFileAction` writes the specified content into a file at the given path.

#### Example Usage:

```ruby
# Usage of WriteFileAction
file_path = "./hello_world.txt"
file_content = "Hello, World!"
action = WriteFileAction.new(file_contents: file_content, file_path: file_path)
action.call
```

This code creates a text file named 'hello_world.txt' containing the text "Hello, World!".

## Troubleshooting

For common issues and tips on troubleshooting with Actions, refer to our [Troubleshooting Guide](../troubleshooting.md).
