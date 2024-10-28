
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

* [CodeFromDescriptionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code_from_description_generator.rb): Generates code based on a description and the technologies used.
* [DescriptionFromCodeGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/description_from_code_generator.rb): Generates a description of the code passed in to it.
* [CodeFromBlueprintGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/code_from_blueprint_generator.rb): Generates code based on a blueprint, a blueprint description, and a description of the desired code.
* [GithubActionGenerator](https://github.com/sublayerapp/sublayer/blob/main/examples/github_action_generator.rb): Generate a Github Action YAML file.

The `llm_output_adapter` directive is used to instruct the LLM on what structure of output to generate. In the first example below we're using `type: :single_string` which takes a `name` and `description` as arguments.


%%%ruby
llm_output_adapter type: :single_string,
  name: "generated_code",
  description: "The generated code in the requested language"
%%%

The other available options and their example usage is:

%%%ruby
llm_output_adapter type: :list_of_strings,
  name: "suggestions",
  description: "List of keyword suggestions"
%%%

%%%ruby
llm_output_adapter type: :single_integer,
  name: "four_digit_passcode",
  description: "an uncommon and difficult to guess four digit passcode"
%%%

%%%ruby
llm_output_adapter type: :list_of_named_strings,
  name: "review_summaries",
  description: "List of movie reviews",
  item_name: "review",
  attributes: [
    { name: "movie_title", description: "The title of the movie" },
    { name: "reviewer_name", description: "The name of the reviewer" },
    { name: "rating", description: "The rating given by the reviewer (out of 5 stars)" },
    { name: "brief_comment", description: "A brief summary of the movie" }
  ]
%%%

%%%ruby
llm_output_adapter type: :named_strings,
  name: "product_description",
  description: "Generate product descriptions",
  attributes: [
    { name: "short_description", description: "A brief one-sentence description of the product" },
    { name: "long_description", description: "A detailed paragraph describing the product" },
    { name: "key_features", description: "A comma-separated list of key product features" },
    { name: "target_audience", description: "A brief description of the target audience for this product" }
  ]
%%%

%%%ruby
# Where :available_routes is a method that returns an array of available routes
llm_output_adapter type: :string_selection_from_list,
  name: "route",
  description: "A route selected from the list",
  options: :available_routes
%%%

%%%ruby
# Where @sentiment_options is an array of sentiment values passed in to the initializer
llm_output_adapter type: :string_selection_from_list,
  name: "sentiment_value",
  description: "A sentiment value from the list",
  options: -> { @sentiment_options }
%%%

### Troubleshooting

If you encounter issues while working with Generators, please refer to the [Troubleshooting Guide]({% link docs/troubleshooting.md %}) for common error scenarios and solutions.
