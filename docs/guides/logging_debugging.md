---
title: Logging and Debugging
parent: Guides
---

# Logging and Debugging

This guide provides details on how to effectively use logging and debugging within the Sublayer environment.

## Setting Up Logging

Start by configuring the logger in your application. Sublayer offers different logging levels, such as info, debug, and error.

```ruby
Sublayer.configure do |config|
  config.logger = Sublayer::Logging::DebugLogger.new
end
```

## Using the Logger

Use the logger to record important events and data points in your code:

```ruby
def my_method
  Sublayer.configuration.logger.log(:info, "Starting my_method", {some_key: 'some_value'})
  # method logic
rescue => e
  Sublayer.configuration.logger.log(:error, "Error in my_method: #{e.message}", {exception: e})
end
```

## Debugging Techniques

1. **Print Statements**: Use these to check the flow of your program or the state of variables.
2. **Step Through Code**: Use an interactive debugger to step through code execution.

## Conclusion

Logging and debugging are crucial for maintaining robust applications. Sublayer's logging framework helps manage logs efficiently.