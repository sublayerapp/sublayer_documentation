---
title: Actions
parent: Core Concepts
nav_order: 2
---

# Actions

Actions are responsible for performing specific operations to get inputs for a Generator or based on the generated output from a Generator.

You can think of actions as similar to tools in other agent frameworks. They encapsulate a single action and do not involve complex decision-making and are the executable units that bring the generated inputs and output to life.

## Setup Guide

Setting up a Sublayer Action involves:

1. **Define the Purpose**: Clearly state what the action should accomplish—e.g., file manipulation, API calls.
2. **Create an Action Class**: Develop a new class inheriting from `Sublayer::Actions::Base`.
3. **Initialize with Data**: The action should gather necessary data at initialization.
4. **Implement the Call Method**: This method executes the action when invoked.
5. **Testing**: Ensure your action performs as expected through tests.

## Real-World Example

Creating an action to write data to a file:

```ruby
require 'sublayer'

class WriteFileAction < Sublayer::Actions::Base
  def initialize(file_contents:, file_path:)
    @file_contents = file_contents
    @file_path = file_path
  end

  def call
    File.open(@file_path, 'w') { |file| file.write(@file_contents) }
  end
end
```

### Usage

To use this action, simply create an instance and call it:

```ruby
# Example Usage:
write_action = WriteFileAction.new(file_contents: "Hello, World!", file_path: "./hello.txt")
write_action.call
```

## Practical Applications

Actions can be utilized for:
- Sending HTTP requests
- File operations
- Database interactions

---

## Examples:

- [WriteFileAction](https://github.com/sublayerapp/tddbot/blob/43297c5da9445bd6c8882d5e3876cff5fc6b2650/lib/tddbot/sublayer/actions/write_file_action.rb): Writes text to a specified file.
- [RunTestCommandAction](https://github.com/sublayerapp/tddbot/blob/43297c5da9445bd6c8882d5e3876cff5fc6b2650/lib/tddbot/sublayer/actions/run_test_command_action.rb): Runs a test command on the command line returning the output.
- [SpeechToTextAction](https://github.com/sublayerapp/rails_llm_voice_chat_example/blob/93300f268dde359b58c92a60db4b54d128d9d965/lib/sublayer/actions/speech_to_text_action.rb): Makes an API call to OpenAI's SpeechToText endpoint with audio data and returns text.
- [TextToSpeechAction](https://github.com/sublayerapp/rails_llm_voice_chat_example/blob/93300f268dde359b58c92a60db4b54d128d9d965/lib/sublayer/actions/text_to_speech_action.rb): Makes an API call to OpenAI's Speech Synthesis endpoint with text and returns audio data.