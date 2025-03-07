---
title: Advanced Custom Triggers
parent: Custom Components
nav_order: 3
---

# Creating Advanced Custom Triggers

This guide provides an in-depth look at developing custom triggers in the Sublayer framework, extending the existing capabilities to better meet your automation needs.

## What are Triggers?
A trigger is an activation mechanism in an agent that determines when an agent performs its tasks. By defining custom triggers, developers can create agents that react dynamically or execute tasks on precise schedules. Triggers can respond to various events or conditions, such as changes in files, time intervals, or external inputs.

## Creating Your Own Trigger

### Step-by-Step Guide
Here’s how to get started with writing a custom trigger from scratch:

1. **Define a New Trigger Class**
   Create a new file within the `lib/sublayer/triggers/` directory, with a descriptive name for your trigger, such as `time_based_trigger.rb`.

   ```ruby
   class TimeBasedTrigger < Sublayer::Triggers::Base
     def initialize(interval)
       @interval = interval
     end
     def setup(agent)
       # Logic for setting up the trigger
     end
     private
     def activate(agent)
       # Logic to activate the agent
     end
   end
   ```
   Remember, your custom trigger must subclass `Sublayer::Triggers::Base` and implement the `setup` method and an optional `activate` method.

2. **Integrate with Agents**
   Use your custom trigger in an agent by including it within the `trigger` block.

   ```ruby
   class MyCustomAgent < Sublayer::Agents::Base
     trigger TimeBasedTrigger.new(interval: 5.minutes)
     # Define goal_condition, check_status, and step
   end
   ```

### Common Use Cases
Custom triggers can be used for:

- **File Monitoring**: Execute tasks when a file changes.
- **Scheduled Tasks**: Run tasks on a schedule, such as every day at midnight.
- **API Calls**: Activate tasks in response to specific webhooks or API calls.

## Troubleshooting
Here are some common issues and solutions when working with custom triggers:

- **Trigger Not Activating**: Ensure the conditions for activation is correctly defined and that the `activate` method is being called.
- **Agent Fails to Execute**: Check if the agent's goal condition or step logic is causing an issue.
  
For complex debugging, utilize logging or raise exceptions within your trigger logic.
