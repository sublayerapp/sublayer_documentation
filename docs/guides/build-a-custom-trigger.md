---
title: Build a Custom Agent Trigger
parent: Guides
nav_order: 2
---

# Build a Custom Trigger

Building custom triggers allows extending the Sublayer Agent's adaptability to varied conditions. In this guide, we'll explore factors to consider, the building process, and deployment best practices.

## The Basics

A trigger is an activation mechanism in an agent that determines when an agent performs its tasks. Custom triggers can adapt to various events, such as file changes, time intervals, or other specific conditions.

## Why Custom Triggers?

Custom triggers provide the versatility to tailor agent activations to unique scenarios. They enable automation and tighter integration with workflows, providing a powerful way to respond to situational changes automatically.

## Building Custom Triggers

### Step 1: Define the Trigger Class
The first step involves creating a new class inheriting from `Sublayer::Triggers::Base`.

```ruby
class IntervalTrigger < Sublayer::Triggers::Base
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
```

### Step 2: Integrate the Trigger Within Agents
Integrate by specifying it in an Agent class.

```ruby
class PollingAgent < Sublayer::Agents::Base
  trigger IntervalTrigger.new(10)

  goal_condition { check_system_status }
  check_status { /* Check logic */ }
  step { /* Work logic */ }
end
```

## Potential Use Cases

- **File Monitoring**: Activate agents based on file changes.
- **Timed Actions**: Schedule periodic checks or actions using interval-based triggers.
- **Custom Event Handling**: Integrate with applications responding to specific changes or signals.

## Best Practices

- **Isolation**: Ensure that triggers are modular, focusing strictly on when an agent should act.
- **Performance**: Consider the performance impact of frequent activations or computation-heavy checks.
- **Testing**: Robustly test triggers in isolated scenarios to confirm their reliability.

This guide aims to empower developers with the knowledge to create event-responsive systems tailored to their unique environmental dynamics and operational requirements. Use the examples and techniques explored here to embed intelligent automation within your applications.