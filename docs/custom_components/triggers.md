---
title: Agent Triggers
parent: Custom Components
nav_order: 2
---

# Custom Agent Triggers

A trigger is an activation mechanism in an agent that determines when an agent performs its tasks. Triggers can respond to various events or conditions (changes in files, time intervals, or any external inputs) providing flexibility in how and when agents operate. By defining custom triggers, developers can create agents that react dynamically or execute tasks on precise schedules.

## Try making your own trigger:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-triggers" width="100%" height="500px"></iframe>

## Examples:

- [FileChange](https://github.com/sublayerapp/sublayer/blob/main/lib/sublayer/triggers/file_change.rb): Activate agent when a file has changed.

## Extended Examples of Custom Triggers

Exploring complex custom triggers enables developers to handle more specific scenarios and enhance agents' capabilities. Below are examples of more complex custom triggers.

### Event-Based Trigger Example
Create a custom trigger that activates when a specific system event occurs, such as a database update completion.

```ruby
class EventBasedTrigger < Sublayer::Triggers::Base
  def initialize(event_name)
    @event_name = event_name
  end

  def setup(agent)
    SystemEvent.subscribe(@event_name) do
      activate(agent)
    end
  end
end

class MyEventAgent < Sublayer::Agents::Base
  trigger EventBasedTrigger.new("database_update_completed")

  goal_condition { false }

  check_status {}

  step do
    puts "Database update completed!"
  end
end
```

### Condition-Based Trigger Example
Create a trigger that starts an agent based on a specific condition being met, such as resource usage exceeding a threshold.

```ruby
class ConditionBasedTrigger < Sublayer::Triggers::Base
  def initialize(condition)
    @condition = condition
  end

  def setup(agent)
    Thread.new do
      loop do
        if @condition.call
          activate(agent)
          break
        end
        sleep 5
      end
    end
  end
end

class ResourceMonitoringAgent < Sublayer::Agents::Base
  trigger ConditionBasedTrigger.new(-> { system_resource_usage > 80 })

  goal_condition { false }

  check_status {}

  step do
    puts "Resource usage exceeded threshold!"
  end
end
```

These examples demonstrate how custom triggers can be adapted and extended to fit specific use cases, providing users the flexibility to integrate advanced logic into their agents.