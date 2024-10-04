---
title: Agents
parent: Core Concepts
nav_order: 3
---

# Agents

Think of Sublayer Agents as your personal assistants, always ready to help with repetitive tasks or respond to changes in your environment. These agents can assist with a wide range of activities, from coding to data processing to system monitoring and beyond.

## Setup Guide

Creating an Agent in Sublayer involves the following steps:

1. **Define Triggers**: Decide what events will trigger the agent (e.g., file changes, scheduled times).
2. **Establish the Goal**: Clearly state what the agent should aim to achieve once triggered.
3. **Status Checks**: Include checks to monitor the agent's progress towards its goal.
4. **Outline Steps**: Define the actionable steps the agent will take to reach its goal.
5. **Coding the Agent**: Implement these items in a class inheriting from `Sublayer::Agents::Base`.

## Real-World Example

Let's consider an agent that runs tests and updates code if the tests fail:

```ruby
require 'sublayer'

class TestAgent < Sublayer::Agents::Base
  def initialize(implementation_file:, test_file:)
    @implementation_file = implementation_file
    @test_file = test_file
  end

  trigger { trigger_on_files_changed { [@implementation_file, @test_file] } }

  goal_condition { @tests_passing }

  check_status do
    stdout, stderr, status = Sublayer::Actions::RunTestCommandAction.new(test_command: "rspec \\#{@test_file}").call
    @tests_passing = status.exitstatus.zero?
  end

  step do
    modified_code = Sublayer::Generators::ModifiedImplementationToPassTestsGenerator.new(implementation_file_contents: File.read(@implementation_file)).generate
    Sublayer::Actions::WriteFileAction.new(file_contents: modified_code, file_path: @implementation_file).call
  end
end
```

### Usage

To activate this agent, instantiate it and invoke the `run` method:

```ruby
agent = TestAgent.new(implementation_file: "path/to/implementation.rb", test_file: "path/to/test_spec.rb")
agent.run
```

## Typical Applications

Agents can be deployed for:
- Automation of development and testing processes
- Monitoring filesystem changes
- Integrating event-driven workflows

---

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

## Examples:

- [RSpecAgent](https://github.com/sublayerapp/sublayer/blob/main/spec/agents/examples/rspec_agent.rb):
  - A Sublayer agent that is triggered any time a test file or an implementation file changes with a goal of making the tests pass. When one of the files changes, the status is checked by running the tests. If the tests are failing, the agent sends the tests and the implementation to an LLM (using a [Sublayer::Generator](/concepts/generators)) to generate a new implementation that should pass the tests.