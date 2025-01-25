---
title: Creating a Custom Action
parent: Guides
---

# Creating a Custom Action

This guide will walk you through the process of creating a custom action in Sublayer.

## Step 1: Define the Purpose

Think about what specific operation your action will perform. It could be interacting with an external service, manipulating data, or triggering a process in your application.

## Step 2: Write the Code

Here's an example of an action that writes to a log file:

```ruby
class WriteToLogFileAction < Sublayer::Actions::Base
  def initialize(log_message:, log_file: "application.log")
    @log_message = log_message
    @log_file = log_file
  end

  def call
    File.open(@log_file, 'a') { |file| file.puts(@log_message) }
  end
end
```

## Step 3: Testing the Action

Ensure your action works by writing tests. Consider edge cases, such as invalid inputs or network failures.

## Step 4: Documentation

Document your action for others to understand its purpose and usage. Include example invocations and any caveats.

## Conclusion

Creating a custom action involves defining its purpose, writing the code, testing it thoroughly, and documenting it well. With these steps, you can extend Sublayer's functionality to fit your needs.