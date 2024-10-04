---
title: Testing Setup with RSpec for Sublayer
parent: Guides
---

# Testing Setup with RSpec for Sublayer

This guide explains how to set up an environment to test Sublayer framework components, ensuring that your changes are stable and functioning as expected.

## Prerequisites

Before setting up testing, ensure you have the following:

- Ruby installed on your system
- The Sublayer framework and its dependencies
- Basic knowledge of RSpec and Ruby

## Installing RSpec

RSpec is a testing tool for Ruby that provides a framework for writing and running tests. To install RSpec, add it to your Gemfile:
```ruby
gem 'rspec', '~> 3.10'
```

And run:
```bash
bundle install
```

## Configuring RSpec for Sublayer

### Step 1: Initialize RSpec

In your project directory, run:
```bash
rspec --init
```
This command creates a `spec` directory with a `spec_helper.rb` file for configuration.

### Step 2: Configure spec_helper.rb

Configure RSpec settings in `spec/spec_helper.rb` like requiring the necessary libraries and setting up global testing configurations.

### Step 3: Write Your Tests
Write test files within the `spec` directory, corresponding to the files you wish to test. For instance, if you're testing `lib/sublayer/actions/my_action.rb`, create `spec/actions/my_action_spec.rb`.

Here is an example test structure:
```ruby
require 'spec_helper'
require 'sublayer/actions/my_action'

RSpec.describe Sublayer::Actions::MyAction do
 it 'performs its action' do
   action = Sublayer::Actions::MyAction.new
   result = action.perform
   expect(result).to be_truthy
 end
end
```

## Running Tests

To execute your tests, simply run:
```bash
bundle exec rspec
```
RSpec will then execute all examples in the `spec` directory.

## Interpreting Test Results

After running the tests, RSpec provides a summary of how many tests were run and how many passed or failed. Use these results to identify which parts of your code might be causing issues.

## Resources
- [RSpec Documentation](https://rspec.info/documentation/)
- [Sublayer GitHub Repository](https://github.com/sublayerapp/sublayer)

By following these instructions, you’ll be able to set up and successfully run tests on the Sublayer framework, ensuring your contributions are robust and reliable.