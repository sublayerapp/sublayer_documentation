---
title: Build a Custom Agent Trigger
parent: Guides
---
# Build a Custom Trigger

<iframe width="560" height="315" src="https://www.youtube.com/embed/UqaSRtoaOh4?si=fdcnLXfuSlIgobdL" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

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
