---
title: Combining Multiple Generators and Actions
description: Step-by-step guide for integrating multiple generators and actions into a cohesive application.
parent: Guides
---

# Combining Multiple Generators and Actions

This guide provides a detailed walkthrough on how to integrate multiple generators and actions into a single cohesive application using the Sublayer framework.

## Introduction

Integrating different generators and actions allows for the creation of sophisticated applications capable of handling complex workflows. This guide will walk you through the process using example implementations.

## Required Components

- **Generators**: Components responsible for producing outputs based on specific inputs.
- **Actions**: Perform specific operations, generally using inputs from generators or other sources.

## Steps to Combine Generators and Actions

### Step 1: Set up Your Development Environment

1. Ensure you have Ruby and Bundler installed.
2. Create a new project directory and navigate into it.
3. Initialize a new Gemfile using the command `bundle init`, and add the Sublayer gem.

    ```ruby
    # Gemfile
    source 'https://rubygems.org'

    gem 'sublayer', '~> 0.2.8'
    ```

4. Run `bundle install` to install the gem.

### Step 2: Define Your Generators

Generators are the foundation of the Sublayer framework, transforming input data into output results. Here is an example of a simple generator:

```ruby
# generators/example_generator.rb
class ExampleGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string,
    name: "example_output",
    description: "An example of generated output."

  def initialize(input_data)
    @input_data = input_data
  end

  def generate
    super
  end

  def prompt
    "Generate something based on \\#{@input_data}."
  end
end
```

### Step 3: Define Your Actions

Actions allow the application to perform specific operations. Here is an example action:

```ruby
# actions/example_action.rb
class ExampleAction < Sublayer::Actions::Base
  def initialize(output_data)
    @output_data = output_data
  end

  def call
    puts "Output: \\#{@output_data}"
  end
end
```

### Step 4: Integrate Your Components

To combine the generator and action in a single workflow, create a script that uses both components:

```ruby
# combine_generators_and_actions.rb
require_relative 'generators/example_generator'
require_relative 'actions/example_action'

# Initialize the generator with input data
generator = ExampleGenerator.new("input data")

# Generate the output
generated_output = generator.generate

# Use the action with the generated output
action = ExampleAction.new(generated_output)
action.call
```

### Step 5: Run Your Application

Use the command line to execute your script and see your integrated components in action:

```shell
ruby combine_generators_and_actions.rb
```

## Conclusion

By following these steps, you can combine multiple generators and actions within a single project to create applications that perform complex tasks. Explore the capabilities of the Sublayer framework to create powerful, AI-driven solutions.

## Additional Resources

- [Sublayer Documentation](https://docs.sublayer.com)
- [Sublayer GitHub Repository](https://github.com/sublayerapp/sublayer)

---
