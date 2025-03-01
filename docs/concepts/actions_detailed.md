---
title: Actions Detailed
parent: Core Concepts
nav_order: 5
---
# Actions Detailed

Actions within the Sublayer framework facilitate specific operations that involve obtaining inputs for a Generator or taking actions based on generated output from a Generator.

## Available Actions

### WriteFileAction
Writes generated content to a specified file path.
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

### RunTestCommandAction
Executes a test command on the command line and returns output.
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

## Custom Action Creation

Creating a custom action involves subclassing `Sublayer::Actions::Base` and defining an `initialize` method to capture necessary parameters, as well as a `call` method to execute the action.

**Example: Custom Notification Action**
```ruby
class SendNotificationAction < Sublayer::Actions::Base
  def initialize(message:, channel:)
    @message = message
    @channel = channel
  end

  def call
    # Logic to send notification
    puts "Notification sent to \\#{@channel}: \\#{@message}"
  end
end
```