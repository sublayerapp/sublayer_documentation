---
title: Agent Triggers
parent: Custom Components
nav_order: 2
---

# Custom Agent Triggers

A trigger is an activation mechanism in an agent that determines when an agent performs its tasks. Triggers can respond to various events or conditions (changes in files, time intervals, or any external inputs) providing flexibility in how and when agents operate. By defining custom triggers, developers can create agents that react dynamically or execute tasks on precise schedules.

## Built-in Triggers

### Sublayer::Triggers::Base

Sublayer provides a base class for all triggers (`Sublayer::Triggers::Base`). This base class can be extended to create custom triggers that fit specific needs that are not served by existing triggers. 

#### FileChange Trigger

One of the straightforward built-in triggers is `FileChange`, which activates an agent when a specified file is changed.

```ruby
class MyAgent < Sublayer::Agents::Base
  trigger Sublayer::Triggers::FileChange.new("/path/to/watched_file.txt")

  goal_condition { false }

  check_status {}

  step do
    puts "File has changed!"
  end
end
```

To use the `FileChange` trigger, simply specify the path to the file you want to watch.

## Creating Custom Triggers

Custom triggers extend the functionality of the base Trigger class. Below is an example of how to create a custom TimeInterval trigger which activates an agent on a set interval:

### TimeInterval Example

```ruby
class TimeInterval < Sublayer::Triggers::Base
  def initialize(interval)
    @interval = interval
  end

  def setup(agent)
    Thread.new do
      loop do
        sleep @interval
        activate(agent)
      end
    end
  end
end

class HelloWorldAgent < Sublayer::Agents::Base
  trigger TimeInterval.new(5)

  goal_condition { false }

  check_status {}

  step do
    puts "Hello, World! Every 5 seconds"
  end
end
```

This example illustrates creating a TimeInterval trigger where `activate(agent)` is called every 5 seconds.

## Try making your own trigger:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-triggers" width="100%" height="500px"></iframe>

Use the interactive code generator to build more complex triggers.