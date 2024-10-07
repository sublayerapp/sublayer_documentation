---
title: Triggers
parent: Core Concepts
nav_order: 4
---

# Triggers

A trigger is an activation mechanism in an agent that determines when an agent performs its tasks. Triggers can respond to various events or conditions (changes in files, time intervals, or any external inputs) providing flexibility in how and when agents operate. By defining custom triggers, developers can create agents that react dynamically or execute tasks on precise schedules.

## Try making your own trigger:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-triggers" width="100%" height="500px"></iframe>

## Examples:

- [FileChange](https://github.com/sublayerapp/sublayer/blob/main/lib/sublayer/triggers/file_change.rb): Activate agent when a file has changed.

## Usage Examples

To illustrate how triggers can be implemented, here's an example of defining a custom trigger to activate an agent when a specific file is modified.

### FileChange Trigger Example
Create a custom trigger that activates when a specified file is changed.

```ruby
class FileChangeTrigger < Sublayer::Triggers::Base
  def initialize(file_path)
    @file_path = file_path
  end

  def setup(agent)
    Listen.to(File.dirname(@file_path)) do |modified, _added, _removed|
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

In this code, the `FileChangeTrigger` listens for changes to a specified file and activates the agent once the file is modified.
