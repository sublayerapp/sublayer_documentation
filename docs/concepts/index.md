---
title: Core Concepts
nav_order: 3
---
# Core Concepts

The framework is broken up into three core concepts: Generators, Actions, and Agents.

Browse the links below to go more in depth into each of these concepts:

* [Generators]({% link docs/concepts/generators.md %})
* [Actions]({% link docs/concepts/actions.md %})
* [Agents]({% link docs/concepts/agents.md %})

---

## Putting It All Together

This section illustrates how to integrate Generators, Actions, and Agents seamlessly to understand their collaboration within a complete workflow. This example will guide you from creating a simple Generator, using it through an Action, and deploying it within an Agent.

### Step 1: Create a Generator
First, we construct a Generator that formulates creative descriptions for monotonous tasks. Here's an elementary example:

```ruby
module Sublayer
  module Generators
    class DescriptionGenerator < Base
      llm_output_adapter type: :single_string, name: "task_description", description: "A detailed task description."

      def initialize(task_name)
        @task_name = task_name
      end

      def generate
        super
      end

      def prompt
        "Write a comprehensive description for the task: #{@task_name}"
      end
    end
  end
end
```

This generator transforms a simple task name into a detailed task description.

### Step 2: Utilize the Generator in an Action
The next phase employs the above Generator within an Action to write the description into a file.

```ruby
module Sublayer
  module Actions
    class WriteDescriptionAction < Base
      def initialize(generator, file_path)
        @generator = generator
        @file_path = file_path
      end

      def call
        description = @generator.generate
        File.write(@file_path, description)
      end
    end
  end
end
```

### Step 3: Execute Using an Agent
Finally, an Agent is created to monitor a directory for new task files, generate a description for each, and document them.

```ruby
module Sublayer
  module Agents
    class TaskAgent < Base
      trigger_on_files_changed { ["tasks"] }

      goal_condition { @tasks_complete }

      check_status {
        @tasks_complete = Dir.empty?("tasks")
      }

      step do
        Dir.glob("tasks/*.txt") do |file|
          generator = Sublayer::Generators::DescriptionGenerator.new(File.basename(file, ".txt"))
          action = Sublayer::Actions::WriteDescriptionAction.new(generator, "descriptions/" + File.basename(file))
          action.call
          File.delete(file)
        end
      end
    end
  end
end
```

This agent ensures any new task in the `tasks` directory is promptly described and recorded.