---
title: Agents
description: A detailed guide on creating and using agents within the Sublayer framework, including lifecycle and trigger explanations.
parent: Core Concepts
nav_order: 3
---
# Agents

Think of Sublayer Agents as your personal assistants, always ready to help with repetitive tasks or respond to changes in your environment. These agents can assist with a wide range of activities, from coding to data processing to system monitoring and beyond.

## Guide to Writing and Utilizing Agents

### Agent Lifecycle

Sublayer Agents operate autonomously, similar to how a personal assistant might work for you. They can handle various tasks, such as monitoring systems, processing data, automating workflows, and more. You create an agent by defining four key aspects:

- **Triggers**: Specifies events that wake the agent up, such as file changes, incoming data, time-based events, or a manual call.
- **Goal Condition**: This is the ultimate objective the agent is trying to achieve, like completing a data analysis or updating a system.
- **Check Status**: This is how the agent checks its progress toward the goal.
- **Step**: This is the actual work or task that the agent performs.

The agent life cycle starts with an event triggering the agent, followed by the agent performing the steps until the goal condition is satisfied. The agent will keep checking its status and taking steps until it completes its task, making processes more efficient and responsive.

### Example: RSpecAgent

Here's an example of a Sublayer agent, the RSpecAgent, which highlights these aspects:

- **Trigger**: The RSpecAgent is designed to activate when a test file or implementation file changes.
- **Goal**: Its goal is ensuring the tests pass.
- **Check Status**: The agent runs the tests to verify if they succeed.
- **Step**: If tests are failing, the agent sends both the tests and the implementation to a language model to generate a new implementation intended to pass the tests.

```ruby
class RSpecAgent < Sublayer::Agents::Base
  def initialize(implementation_file_path:, test_file_path:)
    @implementation_file_path = implementation_file_path
    @test_file_path = test_file_path
    @tests_passing = false
  end

  trigger_on_files_changed { [@implementation_file_path, @test_file_path] }

  goal_condition { @tests_passing == true }

  check_status do
    stdout, stderr, status = Sublayer::Actions::RunTestCommandAction.new(
      test_command: "rspec #{@test_file_path}"
    ).call

    @test_output = stdout
    @tests_passing = (status.exitstatus == 0)
  end

  step do
    modified_implementation = Sublayer::Generators::ModifiedImplementationToPassTestsGenerator.new(
      implementation_file_contents: File.read(@implementation_file_path),
      test_file_contents: File.read(@test_file_path),
      test_output: @test_output
    ).generate

    Sublayer::Actions::WriteFileAction.new(
      file_contents: modified_implementation,
      file_path: @implementation_file_path
    ).call
  end
end
```

### How Triggers Work

Triggers activate agents based on various conditions. For instance, a trigger could be a change in a file, a particular time interval, or a webhook event. Once activated, the agent evaluates its status and performs tasks until the defined goal is achieved.

Understanding and using triggers are essential for developing efficient agents that respond dynamically to changes or schedule-based activities.

## Try generating your own agent:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-agents" width="100%" height="500px"></iframe>

## Troubleshooting

For troubleshooting common issues with Agents and more information, please visit our [Troubleshooting Guide]({% link docs/troubleshooting.md %}).