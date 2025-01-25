---
title: Writing an Agent from Scratch
parent: Guides
---

# Writing an Agent from Scratch

This guide will help you in writing a new agent from scratch using Sublayer.

## Step 1: Define Your Agent's Purpose

Identify what task or process your agent will automate or monitor.

## Step 2: Implement the Agent

Here's a simple example of an agent that checks file changes and deletes temporary files:

```ruby
class CleanupAgent < Sublayer::Agents::Base
  trigger_on_files_changed { ['tmp/*'] }

  goal_condition { Dir['tmp/*'].empty? }

  check_status do
    # Check for non-empty tmp directory
    @files_to_delete = Dir['tmp/*']
  end

  step do
    @files_to_delete.each { |file| File.delete(file) }
  end
end
```

## Step 3: Test the Agent

Write tests to ensure your agent behaves as expected in various scenarios.

## Step 4: Document the Agent

Ensure you include documentation that describes the setup, configuration, and execution of the agent.

## Conclusion

Creating an agent from scratch involves carefully planning its goal and workflow, implementing and testing it, and providing comprehensive documentation.