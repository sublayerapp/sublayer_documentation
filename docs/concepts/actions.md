---
title: Actions
parent: Core Concepts
nav_order: 2
---

# Actions

Actions are responsible for performing specific operations to get inputs for a Generator or based on the generated output from a Generator.

You can think of actions as similar to tools in other agent frameworks. They encapsulate a single action and do not involve complex decision-making and are the executable units that bring the generated inputs and output to life.

## Try making your own Action:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-actions" width="100%" height="500px"></iframe>

## Examples:

* **WriteFileAction**: Writes text to a specified file.
  
  ```ruby
  class WriteFileAction < Sublayer::Actions::Base
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
  ```

* **RunTestCommandAction**: Runs a test command on the command line returning the output.
  
  ```ruby
  class RunTestCommandAction < Sublayer::Actions::Base
    def initialize(test_command:)
      @test_command = test_command
    end

    def call
      stdout, stderr, status = Open3.capture3(@test_command)
      [stdout, stderr, status]
    end
  end
  ```

These examples help users understand the practical application of Actions in the Sublayer framework.

## Troubleshooting

For common issues and tips on troubleshooting with Actions, refer to our [Troubleshooting Guide]({% link docs/troubleshooting.md %}).
