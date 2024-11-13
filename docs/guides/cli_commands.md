---
title: Sublayer CLI Commands
description: A guide to all CLI commands available in Sublayer
date: 2024-01-01
parent: Guides
---

# Sublayer CLI Commands

Sublayer provides a variety of Command Line Interface (CLI) commands to interact with the framework efficiently. This guide covers all available CLI commands and how you can extend them.

## Available Commands

### `generate:generator`

Generates a new Sublayer Generator subclass for your project.

**Usage:**
```
sublayer generate:generator --description "<Description>"
```

- `--description`: Detail what the generator will do.

### `generate:agent`

Generates a new Sublayer Agent subclass for your project.

**Usage:**
```
sublayer generate:agent --description "<Description>"
```

- `--description`: Describe the agent's functionality.

### `generate:action`

Generates a new Sublayer Action subclass for your project.

**Usage:**
```
sublayer generate:action --description "<Description>"
```

- `--description`: Outline what the action should perform.

## Extending CLI Functionalities

You can expand the CLI's capabilities by creating custom commands using the Sublayer framework.

### Custom Command Example

To create a custom command, utilize the Thor library which Sublayer is using under the hood. Here is a basic example:

```ruby
module MyProject
  class CLI < Thor
    desc "say_hello NAME", "Say hello to a user"
    def say_hello(name)
      puts "Hello, \\#{name}!"
    end
  end
end
```

Integrate your custom command with other Sublayer components like Actions and Generators to achieve more complex tasks in your projects.

For more details on customizing commands, refer to the Ruby [Thor documentation](https://github.com/erikhuda/thor).