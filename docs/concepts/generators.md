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

## Walkthrough Example

In this section, we'll walk through creating a custom Generator step-by-step. This comprehensive example is designed for new users to get acquainted with how to build a Generator in the Sublayer framework.

**Step 1: Setup**
- Ensure you have Sublayer installed in your Ruby environment (refer to the Installation Guide if needed).
- Create a new Ruby file for your generator, e.g., `my_custom_generator.rb`.

**Step 2: Define the Generator Class**
- Inside your file, define a new class inheriting from `Sublayer::Generators::Base`.

  ```ruby
  class MyCustomGenerator < Sublayer::Generators::Base
    llm_output_adapter type: :single_string,
      name: "result",
      description: "The generated text based on input data."
  
    def initialize(input_data)
      @input_data = input_data
    end

    def generate
      super
    end
  
    def prompt
      """
        Generate output based on the following data: \n
        #{@input_data}
      """
    end
  end
  ```

**Step 3: Implement Logic**
- Implement the `prompt` method to craft the message you want to send to the LLM (Language Model).
- Use the `generate` method to handle the execution of the request to the LLM.

**Step 4: Real-world Application**
- Deploy and integrate your generator into your Ruby application.
- Use it to automate content creation, data transformation, or any task where generated output is required.

## Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide](../troubleshooting.md) for common error scenarios and solutions.
