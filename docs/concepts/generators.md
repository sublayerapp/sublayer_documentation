---
title: Generators
parent: Core Concepts
nav_order: 1
---
# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

### Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

### [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_description\_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description\_from\_code\_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_blueprint\_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.

### Real-World Examples and Pseudo Scenarios

#### 1. Generating a RESTful API

This example demonstrates building a simple CRUD application using Generators to scaffold the basic API structure.

```ruby
# Ruby
require 'sublayer'

class ApiGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string, name: "api_code", description: "The generated code for a simple RESTful API"

  def initialize(description:, technologies:)
    @description = description
    @technologies = technologies
  end

  def generate
    super
  end

  def prompt
    <<-PROMPT
    Generate a RESTful API for a resource called 'posts', including CRUD operations (Create, Read, Update, Delete).
    Technologies to use: #{@technologies.join(", ")}
    PROMPT
  end
end
```

#### 2. Creating a Data Analysis Script

Illustrates using a Generator to create a script that performs basic data analysis based on user requirements.

```ruby
# Ruby
require 'sublayer'

class DataAnalysisGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string, name: "analysis_code", description: "Generated code for analyzing data"

  def initialize(description:, technologies:)
    @description = description
    @technologies = technologies
  end

  def generate
    super
  end

  def prompt
    <<-PROMPT
    Write a script to analyze sales data, producing summary statistics and visualizations.
    Technologies: #{@technologies.join(", ")}
    PROMPT
  end
end
```

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide](../troubleshooting.md) for common error scenarios and solutions.
