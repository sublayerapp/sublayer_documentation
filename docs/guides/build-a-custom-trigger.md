---
title: Build a Custom Agent Trigger
parent: Guides
---
# Build a Custom Trigger

<iframe width="560" height="315" src="https://www.youtube.com/embed/UqaSRtoaOh4?si=fdcnLXfuSlIgobdL" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Create a Hello World Agent with Time Interval Trigger

Let's make a simple time interval trigger for a hello world sublayer agent

```bash
# bash
mkdir hello_world_agent
cd hello_world_agent
touch Gemfile
touch hello_world_agent.rb
touch time_interval.rb
```

```ruby
# Gemfile
source 'https://rubygems.org'
gem 'sublayer', '~>0.1.0'
```

```bash
# bash
bundle install
```

* Build a sublayer generator with the following description:
    * "A Time Interval Trigger that takes an integer for seconds to wait"
<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-triggers?example=false" width="100%" height="500px"></iframe>

* Paste the result from above into `time_interval.rb` (rename and adjust arguments if needed)

* Write the following code in `hello_world_agent.rb`:

  ```ruby
  # hello_world_agent.rb
  require "sublayer"
  require "./time_interval.rb"

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

  Adjust the name of the TimeInterval class and the arguments as needed!

* Run your code:

  ```bash
  ruby hello_world_agent.rb
  ```

## Additional Examples of Custom Triggers

### Example with Gemini Provider
```ruby
# Custom Gemini Trigger Example
require 'sublayer'

class GeminiTrigger < Sublayer::Triggers::Base
  def initialize(param)
    # Configuration for Gemini
  end

  def setup(agent)
    agent.run_gemini_task
  end
end

class MyGeminiAgent < Sublayer::Agents::Base
  trigger GeminiTrigger.new(some_param)

  goal_condition {}
  check_status {}

  step do
    puts "Running task with Gemini."
  end
end
```

### Example with Claude Provider
```ruby
# Custom Claude Trigger Example
require 'sublayer'

class ClaudeTrigger < Sublayer::Triggers::Base
  def initialize(param)
    # Configuration for Claude
  end

  def setup(agent)
    agent.run_claude_task
  end
end

class MyClaudeAgent < Sublayer::Agents::Base
  trigger ClaudeTrigger.new(some_param)

  goal_condition {}
  check_status {}

  step do
    puts "Running task with Claude."
  end
end
```
