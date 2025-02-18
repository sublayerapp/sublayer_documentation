---
title: Test-Driven Development (TDD) Bot Example
description: A practical example illustrating the use of the TDD Bot from setup to execution.
---

# TDD Bot Example

This guide provides a step-by-step example of using the TDD Bot feature within your development workflow. It is aimed to help users understand the practical application of TDD Bot including setup, execution, and interpreting outputs. 

## Setup Instructions

Before you begin, ensure that you have the Sublayer framework installed and configured.

1. **Installation of Sublayer Framework and Dependencies**:
    - Add `sublayer` to your Gemfile:  
      ```ruby
      gem 'sublayer', '~> 0.2'
      ```
    - Run the installation:  
      ```
      bundle install
      ```
2. **Install TDD Bot**:
    - Add `tddbot` to your Gemfile:  
      ```ruby
      gem 'tddbot'
      ```
    - Install the TDD Bot gem:  
      ```
      bundle install
      ```

## Code Example

Suppose you have a class `Calculator` with an incomplete implementation and you want the TDD Bot to generate the correct implementation based on tests.

### Calculator Class: Initial State

```ruby
# lib/calculator.rb
class Calculator
  def add(a, b)
    # implementation needed
  end

  def subtract(a, b)
    # implementation needed
  end
end
```

### RSpec Tests

```ruby
# spec/calculator_spec.rb
require 'calculator'

describe Calculator do
  it 'adds two numbers' do
    calc = Calculator.new
    expect(calc.add(2, 3)).to eq(5)
  end

  it 'subtracts two numbers' do
    calc = Calculator.new
    expect(calc.subtract(5, 2)).to eq(3)
  end
end
```

### Running TDD Bot

Invoke the TDD Bot from the command line:

```bash
tddbot make_tests_pass lib/calculator.rb "rspec spec/calculator_spec.rb"
```

### Expected Output

The TDD Bot will iteratively modify `lib/calculator.rb` until all tests in `spec/calculator_spec.rb` pass, yielding:

```ruby
class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end
end
```

## Analyzing TDD Bot's Output

Upon successful execution, TDD Bot provides output logs detailing each step of the code modification until the test suite passes. This helps in understanding how the bot interprets and amends logic to meet test conditions.

## Common Errors and Solutions

- **Test Failures Not Resolved**:  
  Ensure your tests are correct. Re-examine the logic if tests continuously fail.

- **Script Execution Errors**:  
  Check your Ruby environment configuration and ensure all dependencies are installed.

- **Timeout Issues**:  
  For long-running tests, consider disabling features like complex computations within your tests to limit execution time.

With this guide, leveraging the TDD Bot to perform TDD should be significantly more transparent and easier for new users.