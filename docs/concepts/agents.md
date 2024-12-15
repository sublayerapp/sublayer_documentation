---
title: Agents
parent: Core Concepts
nav_order: 3
---
# Agents

Think of Sublayer Agents as your personal assistants, always ready to help with repetitive tasks or respond to changes in your environment. These agents can assist with a wide range of activities, from coding to data processing to system monitoring and beyond. You create an agent by defining four key aspects: what should wake it up (triggers), what it's trying to achieve (goal condition), how it checks its progress (check status), and what it actually does (step).

Triggers could be things like file changes, incoming data, time-based events, or even manual calls while the goal might be completing a data analysis or updating a system. The agent will keep checking its status and taking steps until it reaches its goal. It's like having a tireless helper that knows exactly when to jump in and what to do, making a variety of processes more efficient and responsive to change. Whether you're automating workflows, monitoring systems, or processing data, Sublayer Agents provide a flexible, event-driven approach to tackling complex and repetitive tasks.

## Writing an Agent

Sublayer Agents are autonomous units of execution designed to perform specific tasks or monitor systems. They are built on top of the `Sublayer::Agents::Base` class and utilize a Domain Specific Language (DSL) for defining their behavior.

The DSL consists of four primary methods:

- `trigger`: Specifies events that activate the agent (e.g., file changes, time-based events, webhooks, etc.)
- `goal_condition`: Defines the criteria for task completion
- `check_status`: Evaluates the current state of the task
- `step`: Implements the actual logic to be executed

These methods work in concert to create a flexible, event-driven system for automating complex workflows and responding to changes in various environments.

## Try generating your own agent:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-agents" width="100%" height="500px"></iframe>

## Example: Building a Simple Agent

To illustrate how agents work, let's create a simple agent that watches a directory and logs when files are added.

### Define the Agent Class

Create a new class inheriting from `Sublayer::Agents::Base` and set up its behaviors.

```ruby
module Sublayer
  module Agents
    class FileWatcherAgent < Base

      def initialize(directory_to_watch)
        @directory_to_watch = directory_to_watch
      end

      trigger do
        Sublayer::Triggers::FileChange.new { Dir.glob(File.join(@directory_to_watch, '**', '*')) }
      end

      goal_condition do
        false
      end

      check_status do
        puts "Checking for new files..."
      end

      step do
        puts "Files have been added to the directory."
      end
    end
  end
end
```

### Run the Agent

Instantiate and run your agent to see it in action.

```ruby
watcher_agent = Sublayer::Agents::FileWatcherAgent.new('/path/to/directory')
watcher_agent.run
```

This basic example demonstrates creating an agent that monitors a directory and reports any new files. You can extend this functionality to take specific actions based on changes. By understanding how to define triggers, goal conditions, check statuses, and perform steps, you can effectively automate a variety of tasks using agents.

## Troubleshooting

For troubleshooting common issues with Agents and more information, please visit our [Troubleshooting Guide]({% link docs/troubleshooting.md %}).