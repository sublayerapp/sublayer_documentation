---
title: Triggers Detailed
parent: Core Concepts
nav_order: 7
---

# Triggers Detailed

Agent Triggers in the SubLayer framework serve to determine when an Agent should initiate its task execution.

## Trigger Interface
The trigger interface consists of flexible events or conditions responsible for invoking an Agent’s tasks. These include changes in files, timed intervals, and external inputs.

```ruby
class TimeIntervalTrigger < Sublayer::Triggers::Base
  def initialize(interval_seconds)
    @interval_seconds = interval_seconds
  end

  def setup(agent)
    Thread.new do
      loop do
        sleep @interval_seconds
        activate(agent)
      end
    end
  end
end
```

## Built-in Triggers

### FileChangeTrigger
Invokes an Agent when a monitored file is altered.
```ruby
class FileChangeTrigger < Sublayer::Triggers::Base
  def initialize(file_path)
    @file_path = file_path
  end

  def setup(agent)
    # Setup logic using Listen gem
  end
end
```

## Custom Triggers

Creating custom triggers entails subclassing `Sublayer::Triggers::Base`, defining initialization parameters, and implementing a `setup` method to activate the Agent conditionally.

**Example: NetworkRequestTrigger**
```ruby
class NetworkRequestTrigger < Sublayer::Triggers::Base
  def initialize(endpoint)
    @endpoint = endpoint
  end

  def setup(agent)
    # Logic to activate agent on HTTP request
  end
end
```

Triggers provide expansive possibilities for orchestrating when and how Agents respond to dynamism within systems and environments.