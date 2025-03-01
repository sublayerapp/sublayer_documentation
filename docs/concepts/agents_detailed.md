---
title: Agents Detailed
parent: Core Concepts
nav_order: 6
---
# Agents Detailed

SubLayer Agents are designed to act autonomously, performing specific tasks or monitoring systems by reacting to triggers and working towards a goal condition.

## Agent Lifecycle
The lifecycle of an Agent consists of waking up when triggered, assessing its goal condition, checking its current status, and performing a step towards achieving its goal.

### Example Lifecycle
- **Trigger**: File change detection or scheduled time.
- **Goal Condition**: A condition that defines completion, such as all tests passing.
- **Status Check**: Determine if the goal condition is achieved based on current outcomes.
- **Step Execution**: Action or sequence of actions to move towards the goal.

## Configuration
Agents are configured with triggers, a goal, status checks, and steps through a Domain Specific Language (DSL).

```ruby
class MyAgent < SubLayer::Agents::Base
  trigger SomeTrigger.new
  goal_condition { goal_met? }

  check_status do
    # Check current state
  end

  step do
    # Steps to move towards goal
  end
end
```

## Example Scenarios

- **Automating CI/CD Pipelines**: An agent can automate the deployment process by triggering tests, capturing results, and deciding the next deployment steps.
- **Automated Monitoring**: Continuously monitor application logs and trigger alerts or remedial scripts when an anomaly is detected.

Agents offer a structured and extendable framework to represent complex automation and monitoring tasks in a concise manner.