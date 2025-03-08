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

### Comprehensive Examples

To better understand how Sublayer Generators can be applied in real-world scenarios, here are some comprehensive examples from different domains:

#### Web Development

**Problem:** Automating the generation of dynamic web pages.

**Generator Code:**

```ruby
class WebPageGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string, name: "html_content", description: "Generated HTML content for the webpage"

  def initialize(description:)
    @description = description
  end

  def generate
    super
  end

  def prompt
    "Write HTML content for a webpage that #{description}. Include responsive design and SEO best practices."
  end
end
```

**Sample Data/Input and Expected Output:**
Input: "a landing page for a tech startup focusing on AI tools"

Expected Output: Full HTML code for the landing page.

**Commentary:** This generator helps in quickly creating web pages that are well-structured and optimized for search engines, saving time for developers.

#### Automation

**Problem:** Generating automation scripts for system maintenance.

**Generator Code:**

```ruby
class MaintenanceScriptGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string, name: "script_content", description: "Generated script for system maintenance"

  def initialize(task_description:)
    @task_description = task_description
  end

  def generate
    super
  end

  def prompt
    "Generate a script that automates the task: #{@task_description}. Ensure it includes proper logging and error handling."
  end
end
```

**Sample Data/Input and Expected Output:**
Input: "backup and clean temporary files in Linux server"

Expected Output: Shell script performing backup and cleanup.

**Commentary:** This generator is useful for IT professionals in automating routine tasks, reducing manual effort and minimizing human error.

#### Data Retrieval

**Problem:** Extracting and formatting data from APIs.

**Generator Code:**

```ruby
class ApiDataFormatterGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :single_string, name: "formatted_data", description: "Formatted data from API"

  def initialize(api_response:)
    @api_response = api_response
  end

  def generate
    super
  end

  def prompt
    "Format the following JSON response to CSV: #{@api_response}. Include headers."
  end
end
```

**Sample Data/Input and Expected Output:**
Input: JSON response from an API

Expected Output: CSV formatted data

**Commentary:** This generator assists data analysts in processing and converting API data into usable formats for analysis.

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide]({% link docs/troubleshooting.md %}) for common error scenarios and solutions.