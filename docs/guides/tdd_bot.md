# Build an LLM TDD Bot with Sublayer

## Introduction

In this guide, we'll walk through the process of creating a Test-Driven Development (TDD) bot using the Sublayer gem. This bot will utilize a large language model (LLM) to take your test cases, interpret any failures, and generate code to resolve those failures.

You can follow this guide along with the [TDD Bot repository](https://github.com/sublayerapp/tddbot) for additional context. The repository contains both a starting point and the completed project.

## Initial Setup

The main entry point for this program is the `MakeTestsPass` command, found in [lib/tddbot/commands/make_tests_pass.rb](https://github.com/sublayerapp/tddbot/blob/main/lib/tddbot/commands/make_tests_pass.rb). This command integrates with Shopify’s `cli-kit` and initiates the process of analyzing and modifying the code until the test cases pass.

```ruby
require 'tddbot'

module Tddbot
  module Commands
    class MakeTestsPass < Tddbot::Command
      def call(_args, _name)
        Sublayer::Tasks::MakeRspecTestsPassTask.new(implementation_file_path: _args[0], test_command: _args[1]).run
      end

      def self.help
        "Use an LLM to modify the implementation file until tests pass.\n
        Usage: {{command:#{Tddbot::TOOL_NAME} make_tests_pass <implementation_file_path> \"<test_command>\"}}\n
        Example: {{command:#{Tddbot::TOOL_NAME} make_tests_pass lib/my_class.rb \"rspec spec/my_class_spec.rb\"}}"
      end
    end
  end
end
```

Additional requires and folder setup are managed in [/lib/tddbot.rb](https://github.com/sublayerapp/tddbot/blob/main/lib/tddbot.rb).

## Step 1: Creating the MakeRspecTestsPassTask

This task drives the main logic of the TDD bot. It loops through the cycle of:

1. Executing the tests.
2. Checking if the tests pass. If they do, the task is complete.
3. If the tests fail, the task invokes a generator to adjust the implementation based on the failure output.
4. Updates the implementation file with new code.

```ruby
module Sublayer
  module Tasks
    class MakeRspecTestsPassTask < Base
      def initialize(implementation_file_path:, test_command:)
        @implementation_file_path = implementation_file_path
        @test_command = test_command
      end

      def run
        loop do
          stdout, stderr, status = Sublayer::Actions::RunTestCommandAction.new(test_command: @test_command).call

          puts stdout
          puts stderr

          if status.exitstatus == 0
            puts "All tests pass!"
            return
          end

          modified_implementation = Sublayer::Generators::ModifiedImplementationToPassTestsGenerator.new(
            implementation_file_contents: File.read(@implementation_file_path),
            test_file_contents: File.read(@test_command.split(" ")[1]),
            test_output: stdout
          ).generate

          Sublayer::Actions::WriteFileAction.new(
            file_contents: modified_implementation,
            file_path: @implementation_file_path
          ).call
        end
      end
    end
  end
end
```

## Step 2: Implementing Key Sublayer Actions

The `MakeRspecTestsPassTask` utilizes Sublayer actions:

- **RunTestCommandAction**: Executes the test command and captures the output.

  ```ruby
  module Sublayer
    module Actions
      class RunTestCommandAction < Base
        def initialize(test_command:)
          @test_command = test_command
        end

        def call
          stdout, stderr, status = Open3.capture3(@test_command)
          [stdout, stderr, status]
        end
      end
    end
  end
  ```

- **WriteFileAction**: Writes new content to the specified file.

  ```ruby
  module Sublayer
    module Actions
      class WriteFileAction < Base
        def initialize(file_contents:, file_path:)
          @file_contents = file_contents
          @file_path = file_path
        end

        def call
          File.open(@file_path, 'wb') do |file|
            file.write(@file_contents)
          end
        end
      end
    end
  end
  ```

## Step 3: Crafting the Generator

The generator `ModifiedImplementationToPassTestsGenerator` feeds the LLM with the necessary context to generate the desired code modifications.

```ruby
module Sublayer
  module Generators
    class ModifiedImplementationToPassTestsGenerator < Base
      llm_output_adapter type: :single_string,
        name: "modified_implementation",
        description: "The modified implementation that will pass the tests"

      def initialize(implementation_file_contents:, test_file_contents:, test_output:)
        @implementation_file_contents = implementation_file_contents
        @test_file_contents = test_file_contents
        @test_output = test_output
      end

      def generate
        super
      end

      def prompt
        <<-PROMPT
        You are an expert in debugging and test resolution.

        Adjust the existing implementation based on the provided implementation file content: #{@implementation_file_contents},
        the test file content: #{@test_file_contents},
        and the latest test output: #{@test_output}
        to ensure the tests pass.
        PROMPT
      end
    end
  end
end
```

## Run the TDD Bot

After setting up the components, install the built gem and run the bot:

```shell
$ bundle install
$ gem build tddbot.gemspec
$ gem install ./tddbot-0.0.1.gem
$ tddbot make_tests_pass {YOUR_IMPLEMENTATION_FILE} {YOUR_TEST_COMMAND}
```

This guide ensures that the TDD Bot is structured to interact with test cases and use a generative approach to solve failures, making it a valuable tool for developers practicing Test-Driven Development with LLM assistance.