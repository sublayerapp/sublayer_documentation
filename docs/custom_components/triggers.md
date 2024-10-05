---
title: Agent Triggers
parent: Custom Components
nav_order: 2
---

# Custom Agent Triggers

Agent triggers in Sublayer are responsible for determining when an agent should perform its tasks. Triggers respond to specified events or conditions, such as changes in files, time intervals, or other external inputs. By defining custom triggers, developers can create agents that operate dynamically or on specific schedules.

## The Trigger Interface

To develop a custom trigger in Sublayer, implement the following interface:

**Required Methods**
- `initialize`: Accepts configuration parameters necessary for the trigger operation.
- `setup`: Configures the trigger to listen to the desired events. When an event occurs, it will activate the associated agent.

## Using Custom Triggers

For custom triggers, you can pass the trigger object directly to the `trigger` method in your agent:

```ruby
class MyAgent < Sublayer::Agents::Base
  trigger MyCustomTrigger.new(event: "file_change", config: my_config)

  goal_condition { my_goal_condition_check }
  check_status { my_status_check_logic }
  step { my_action_step }

  # ... rest of the agent code
end
```

## Try making your own trigger:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-triggers" width="100%" height="500px"></iframe>

## Examples:

- [FileChange](https://github.com/sublayerapp/sublayer/blob/main/lib/sublayer/triggers/file_change.rb): Triggers an agent when a file is modified or changed, providing responsive interactions with the file system.

For those interested in creating highly responsive and event-driven agents, understanding and implementing effective triggers is fundamental. By leveraging triggers, agents can react seamlessly to an array of environmental stimuli, thereby enhancing their utility and efficiency across varied applications.