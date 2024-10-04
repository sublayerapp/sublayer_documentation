---
title: Custom Components
nav_order: 4
has_children: true
---
# Custom Components

The Sublayer framework is designed to be extensible and customizable, allowing developers to easily adapt it to meet specific use cases.

## Extending the Framework

### Building Custom Output Adapters
Output Adapters allow you to define the format of the AI-generated outputs, making data integration seamless.

#### Example:
- [Single String](https://github.com/sublayerapp/sublayer/blob/main/lib/sublayer/components/output_adapters/single_string.rb)
- [List of Strings](https://github.com/sublayerapp/sublayer/blob/main/lib/sublayer/components/output_adapters/list_of_strings.rb)

To create a custom output adapter, implement the core methods: `initialize`, `properties`, and optionally `materialize_result`.

### Developing Custom Triggers
Triggers determine when agents perform tasks, reacting to various events like file changes or time intervals.

#### Example:
- [FileChange](https://github.com/sublayerapp/sublayer/blob/main/lib/sublayer/triggers/file_change.rb)

For a custom trigger, define a new class based on `Sublayer::Triggers::Base`, implementing the necessary logic in `setup` and `activate` methods.

* [Output Adapters]({% link docs/custom_components/output-adapters.md %})
* [Triggers]({% link docs/custom_components/triggers.md %})

Learn more about building custom components and enhancing the flexibility of your AI solutions.