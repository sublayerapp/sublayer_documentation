---
title: Build a Custom Agent Trigger
parent: Guides
---
# Build a Custom Trigger

<iframe width="560" height="315" src="https://www.youtube.com/embed/UqaSRtoaOh4?si=fdcnLXfuSlIgobdL" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

This guide demonstrates how to build a simple time interval trigger for a Hello World Sublayer agent. This trigger will help illustrate the basics of creating custom triggers within Sublayer's framework.

## Step-by-Step Guide

### Step 1: Setup Project Directory

First, create the necessary files for our project:

```bash
mkdir hello_world_agent
cd hello_world_agent
touch Gemfile
```

### Step 2: Configure Gemfile

Include Sublayer in your Gemfile:

```ruby
# Gemfile
source 'https://rubygems.org'
gem 'sublayer', '~> 0.2.7'
```

### Step 3: Install Dependencies

Run bundler to install the dependencies specified in the Gemfile:

```bash
bundle install
```

### Step 4: Create Trigger Generator

Build a Sublayer generator with the following description:
"A Time Interval Trigger that takes an integer for seconds to wait."

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-triggers?example=false" width="100%" height="500px"></iframe>

### Step 5: Implement the Trigger

Paste the result from above into a new file named `time_interval.rb`. Adjust the class and argument names if necessary.

### Step 6: Create Hello World Agent

Create `hello_world_agent.rb` with the following code to utilize the trigger:

```ruby
# hello_world_agent.rb
require "sublayer"
require "./time_interval"

class HelloWorldAgent < Sublayer::Agents::Base
  trigger TimeInterval.new(2)

  goal_condition { false }

  check_status {}

  step do
    puts "hello world"
  end
end

HelloWorldAgent.new.run
```

Modify the `TimeInterval` class name and its arguments to suit your requirements as needed.

### Step 7: Execute the Agent

Run your code to see the agent in action:

```bash
ruby hello_world_agent.rb
```

---

This guide provides the foundational steps to create a custom trigger, integrating it into an agent workflow. For additional customization options and exploration of triggers, refer to the [Sublayer Trigger Documentation](docs/custom_components/triggers.md). Keep experimenting to create more comprehensive sublayer solutions.