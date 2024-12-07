---
title: Agent Triggers
description: Explanation on building custom triggers for agents, with examples and use cases.
parent: Custom Components
nav_order: 2
---
# Custom Agent Triggers

Triggers in Sublayer Agents are mechanisms that determine when an agent should begin its tasks. They can be based on file changes, time intervals, or any predefined events, allowing developers to create a wide array of responsive and dynamic agent behaviors.

## Creating Triggers

To create a trigger, you need to define when and how the agent should be activated. Triggers are powerful because they dictate the agent's responsiveness to certain conditions or events. Here's the blueprint for a basic Trigger:

```ruby
module Sublayer
  module Triggers
    class Base
      def initialize(&block)
        @block = block
      end

      def setup(agent)
        raise NotImplementedError, "Subclasses must implement setup method"
      end

      def activate(agent)
        agent.send(:take_step)
      end
    end
  end
end
```

### FileChange Trigger Example

```ruby
class FileChangeTrigger < Sublayer::Triggers::Base
  def initialize(file_path)
    @file_path = file_path
  end

  def setup(agent)
    Listen.to(File.dirname(@file_path)) do |modified, added, removed|
      if modified.include?(@file_path)
        activate(agent)
      end
    end.start
  end
end

class MyFileChangeAgent < Sublayer::Agents::Base
  trigger FileChangeTrigger.new("/path/to/watched_file.txt")

  goal_condition { false }

  check_status {}

  step do
    puts "File changed!"
  end
end
```

## Examples of Triggers

- **FileChange**: Activates an agent when a file change is detected, useful for scenarios like automatic test runs or content refreshes.
- **TimeInterval**: Triggers an agent at specified intervals, allowing for periodic tasks or checks.

## Try making your own trigger:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-triggers" width="100%" height="500px"></iframe>

## Real Use Cases

- **Continuous Integration Pipeline**: Using a FileChange trigger to start executing tests whenever a code file changes.
- **Scheduled Reporting**: Implementing a TimeInterval trigger to generate and send reports daily or weekly.

These are just examples of how you can implement triggers in practical scenarios, showcasing the flexibility and power triggers add to the agent's capability.

