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

### File Change Trigger Example
Create a custom trigger that activates when a specific file is changed.

```ruby
class FileChangeTrigger < Sublayer::Triggers::Base
  def initialize(file_path)
    @file_path = file_path
  end

  def setup(agent)
    Listen.to(File.dirname(@file_path)) do |modified, added, removed|
      if modified.include?(@file_path)
        activate(agent)
      end
    end.start
  end
end

class MyFileChangeAgent < Sublayer::Agents::Base
  trigger FileChangeTrigger.new("/path/to/watched_file.txt")

  goal_condition { false }

  check_status {}

  step do
    puts "File changed!"
  end
end
```

### HTTP Endpoint Trigger Example
Create a trigger that starts an agent based on an HTTP request.

```ruby
require 'sinatra'

class HTTPEndpointTrigger < Sublayer::Triggers::Base
  def initialize(port)
    @port = port
  end

  def setup(agent)
    Thread.new do
      Sinatra::Application.get('/trigger') do
        activate(agent)
        "Agent triggered!"
      end

      Sinatra::Application.run!
    end
  end
end

class MyHTTPAgent < Sublayer::Agents::Base
  trigger HTTPEndpointTrigger.new(4567)

  goal_condition { false }

  check_status {}

  step do
    puts "HTTP endpoint triggered!"
  end
end
```

Run this agent and send a GET request to `http://localhost:4567/trigger` to activate it.