---
title: Generators
parent: Core Concepts
nav_order: 1
---
# Generators

Generators are responsible for generating specific outputs based on input data. They focus on a single generation task and do not perform any actions or complex decision-making. Generators are the building blocks of the Sublayer framework.

## Output Adapters

Output adapters in Sublayer define the structure and format of the AI-generated output. With these, you can tailor the output format to your needs.

### Single String Adapter
Outputs a single string.
```ruby
llm_output_adapter type: :single_string,
  name: "generated_text",
  description: "The generated text output"
```

### List of Strings Adapter
Outputs an array of strings.
```ruby
llm_output_adapter type: :list_of_strings,
  name: "list_of_codes",
  description: "A list of generated codes"
```

### Named Strings Adapter
Outputs a structured hash with each key as a descriptor of the string.
```ruby
llm_output_adapter type: :named_strings,
  name: "detailed_code_info",
  description: "Information about the codes",
  attributes: [
    { name: "language", description: "Programming language used" },
    { name: "complexity", description: "Estimated complexity of the code" }
  ]
```

### List of Named Strings Adapter
Outputs an array of structured hashes.
```ruby
llm_output_adapter type: :list_of_named_strings,
  name: "project_files_info",
  description: "Information about each project file",
  item_name: "file_info",
  attributes: [
    { name: "file_name", description: "Name of the file" },
    { name: "lines_of_code", description: "Number of LOC in the file" }
  ]
```

Using these adapters, you can efficiently manage the output from your Generators, ensuring it meets your application requirements.

### Try making your own generator:

<iframe src="https://blueprints.sublayer.com/interactive-code-generator/sublayer-generators?example=true" width="100%" height="500px"></iframe>

### [Examples](https://github.com/sublayerapp/sublayer/tree/main/examples):

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_description\_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description\_from\_code\_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code\_from\_blueprint\_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide]({% link docs/troubleshooting.md %}) for common error scenarios and solutions.