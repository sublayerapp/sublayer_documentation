---
title: Generators
parent: Core Concepts
nav_order: 1
---
# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

## Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

## [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_description\_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description\_from\_code\_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_blueprint\_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.

## Testing Your Generators

To maintain and verify the functionality of your generators, it is important to set up effective testing mechanisms. The sublayer framework facilitates this by integrating with standard testing frameworks like RSpec. Refer to the existing test files located in `spec/generators` for examples of how to write tests for your generators.

### How to Set Up Tests for New Generators

1. **Create a Test File:** For each generator, you should have a corresponding test file in `spec/generators`. For example, if you have a generator named `MyGenerator`, create a file named `my_generator_spec.rb`.
2. **Write Test Cases:** Utilize RSpec to write test cases that assert the expected behavior of your generator. This typically includes checking that the generator produces the correct output given certain inputs.
3. **Use Mocking Tools:** Where applicable, use mocking libraries to simulate and test external dependencies or complex scenarios.
4. **Run Tests Regularly:** Ensure that your tests are part of the regular CI/CD pipeline to catch issues early.

#### Example Test Case Structure

Here's a simple example of how your test case structure might look:

```ruby
require 'spec_helper'
require 'generators/examples/my_generator'

RSpec.describe MyGenerator do
  it 'generates the correct code' do
    generator = MyGenerator.new(input: 'example input')
    result = generator.generate
    expect(result).to eq('expected output')
  end
end
```

Regular testing ensures that your generators evolve to meet new requirements without breaking existing functionality.

## Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide]({% link docs/troubleshooting.md %}) for common error scenarios and solutions.