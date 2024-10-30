---
title: Agent Triggers
parent: Custom Components
nav_order: 2
---

# Custom Agent Triggers

A trigger is an activation mechanism in an agent that determines when an agent performs its tasks. Triggers can respond to various events or conditions (changes in files, time intervals, or any external inputs) providing flexibility in how and when agents operate. By defining custom triggers, developers can create agents that react dynamically or execute tasks on precise schedules.

## Try making your own trigger:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-triggers" width="100%" height="500px"></iframe>

## Create a Hello World Agent with Time Interval Trigger

Let's make a simple time interval trigger for a hello world sublayer agent

```bash\n# bash
mkdir hello_world_agent
cd hello_world_agent
touch Gemfile
touch hello_world_agent.rb
touch time_interval.rb
```\n```ruby\n# Gemfile
source 'https://rubygems.org'
gem 'sublayer', '~>0.1.0'
```\n```bash\n# bash
bundle install
```\n* Build a sublayer generator with the following description:
    * "A Time Interval Trigger that takes an integer for seconds to wait"
<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-triggers?example=false" width="100%" height="500px"></iframe>

* Paste the result from above into `time_interval.rb` (rename and adjust arguments if needed)
* Write the following code in `hello_world_agent.rb`:

  ```ruby\n  # hello_world_agent.rb
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
  ```\n  Adjust the name of the TimeInterval class and the arguments as needed!

* Run your code:

  ```bash\n  ruby hello_world_agent.rb
  ```\n## Examples:

- [FileChange](https://github.com/sublayerapp/sublayer/blob/main/lib/sublayer/triggers/file_change.rb): Activate agent when a file has changed.
- [TimeInterval](https://docs.sublayer.com/docs/guides/build-a-custom-trigger): Activate agent on a specified time interval

## Additional Examples of Custom Triggers

### File Change Trigger Example
Create a custom trigger that activates when a specific file is changed.

```ruby\nclass FileChangeTrigger < Sublayer::Triggers::Base
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
```\n### HTTP Endpoint Trigger Example
Create a trigger that starts an agent based on an HTTP request.

```ruby\nrequire 'sinatra'
class HTTPEndpointTrigger < Sublayer::Triggers::Base
  def initialize(endpoint:, port:)
    @endpoint = endpoint
    @port = port
  end

  def setup(agent)
    Sinatra::Base.set :port, @port
    Sinatra::Base.set :bind, '0.0.0.0'

    Sinatra::Base.post(@endpoint) do
      activate(agent)
      status 204 # No content
    end

    Thread.new do
      begin
        Sinatra::Base.run!
      rescue StandardError => e
        puts "Error starting HTTP endpoint: #{e.message}"
      end
    end
  end
end

class MyHTTPAgent < Sublayer::Agents::Base
  trigger HTTPEndpointTrigger.new(endpoint: "/trigger", port: 4567)

  goal_condition { false }

  check_status {}

  step do
    puts "HTTP endpoint triggered!"
  end
end
```\nRun this agent and send a GET request to `http://localhost:4567/trigger` to activate it.