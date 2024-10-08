---
title: Using Custom Adapters
parent: Guides
nav_order: 3
---

# Using Custom Adapters

In this guide, we will explore how to create and integrate custom adapters within the Sublayer framework to extend its capabilities.

## Overview
Creating custom adapters allows developers to tailor the framework to meet specific needs or use specialized formats.

## Step-by-step Guide
1. **Identify Requirements**: Determine what the custom adapter should accomplish.
2. **Create the Adapter**: Develop the custom adapter by following the established interface within the Sublayer framework.
3. **Integrate and Test**: Add the adapter to your project and run thorough tests to ensure it works as expected.

## Real-world Scenario
An example scenario where a custom adapter might be necessary could involve connecting Sublayer with an unusual output format specific to an industry or integrating a non-standard API response structure directly into your application flow.

## Code Snippets
Here are some basic code snippets showing how a custom adapter can be structured:
```ruby
class MyCustomAdapter < Sublayer::Components::OutputAdapters::Base
  def initialize(name:, description:)
    @name = name
    @description = description
  end

  def properties
    # Define properties
  end
end
```

## Conclusion
Custom adapters are a powerful feature of the Sublayer framework allowing for great flexibility. This ability to adapt and extend is crucial for developers looking to meet unique application requirements. 
