---
title: Agents
parent: Core Concepts
nav_order: 3
---
# Agents

Think of Sublayer Agents as your personal assistants, always ready to help with repetitive tasks or respond to changes in your environment. These agents can assist with a wide range of activities, from coding to data processing to system monitoring and beyond. You create an agent by defining four key aspects: what should wake it up (triggers), what it's trying to achieve (goal condition), how it checks its progress (check status), and what it actually does (step).

Triggers could be things like file changes, incoming data, time-based events, or even manual calls while the goal might be completing a data analysis or updating a system. The agent will keep checking its status and taking steps until it reaches its goal. It's like having a tireless helper that knows exactly when to jump in and what to do, making a variety of processes more efficient and responsive to change. Whether you're automating workflows, monitoring systems, or processing data, Sublayer Agents provide a flexible, event-driven approach to tackling complex and repetitive tasks.

## Creating Custom Agents

Custom agents allow you to automate complex workflows by defining the rules and steps that should be followed when certain conditions are met.

### Basic Agent Example

Let's consider an agent that is triggered periodically to monitor file changes:

```ruby
class FileMonitorAgent < Sublayer::Agents::Base
  trigger { FileChange.new("/path/to/watch") }

  goal_condition { new_file_processed? }

  check_status { @new_file_path = check_for_new_files }

  step do
    if @new_file_path
      process_file(@new_file_path)
    end
  end
end
```

### Detailed Real-World Agent Example

A more detailed example agent might combine both Generators and Actions to perform tasks like fetching data using a Generator, processing it with an Action, and then storing the results:

```ruby
class DataProcessingAgent < Sublayer::Agents::Base
  trigger { TimeInterval.new(300) } # Trigger every 5 minutes

  goal_condition { processed_data_saved? }

  check_status { fetch_data }

  step do
    processed_data = Sublayer::Generators::DataGenerator.new(data: @fetched_data).generate
    Sublayer::Actions::SaveToDatabaseAction.new(data: processed_data).call
  end

  private

  def fetch_data
    @fetched_data = ExternalService.fetch
  end

  def processed_data_saved?
    !@fetched_data.nil?
  end
end
```

### Examples:

- [RSpecAgent](https://github.com/sublayerapp/sublayer/blob/main/spec/agents/examples/rspec_agent.rb)
  - A Sublayer agent that is triggered any time a test file or an implementation file changes with a goal of making the tests pass. When one of the files changes, the status is checked by running the tests. If the tests are failing, the agent sends the tests and the implementation to an LLM (using a [Sublayer::Generator](/concepts/generators)) to generate a new implementation that should pass the tests.

## Troubleshooting

For troubleshooting common issues with Agents and more information, please visit our [Troubleshooting Guide]({% link docs/troubleshooting.md %}).