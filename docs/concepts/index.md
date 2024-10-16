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

## CLI Project Setup

Setting up a CLI project with Sublayer involves creating a structured framework where CLI commands can interact with Generators and Actions to automate and manage various tasks. This setup aids in creating powerful command-line tools that leverage AI capabilities.

### Integrating CLI Options

Sublayer CLI facilitates the integration of various commands that enhance functionality.

**Example of a Command**

```ruby
require 'sublayer'

class HelloWorldCommand < Sublayer::Commands::Base
  desc 'Say hello', 'Prints a basic hello message'

  def execute
    puts 'Hello, world!'
  end
end
```

This command structure allows you to expand and create numerous CLI commands that interface seamlessly with the Sublayer functionalities. For more detailed interactions, see [Generators]({% link docs/concepts/generators.md %}) and [Actions]({% link docs/concepts/actions.md %}).