---
title: Custom Components
nav_order: 4
---
# Custom Components

The Sublayer framework is designed to be extensible and customizable. Beyond just building your own Generators, Actions, and Agents, you can also create your own custom Output Adapters for your Generators, Triggers for your Agents, and Providers for any custom model you're working with.

## Available Components

- **Output Adapters**: These define the structure and format of the AI-generated output. They serve as a bridge between the raw AI responses and the structured data your application expects.
  - Learn more about creating custom adapters in the [Output Adapters documentation]({% link docs/custom_components/output-adapters.md %}).

- **Triggers**: These are used to activate agents and determine when an agent should perform its tasks. Triggers can respond to various events, conditions, or external inputs, offering flexibility in operation.
  - Detailed instructions are available in [Custom Agent Triggers]({% link docs/custom_components/triggers.md %}).

- **Providers**: You can define custom providers to connect with different AI models, enhancing adaptability and model-agnostic functionality.
  - Explore more about the Providers and their configuration in the [Advanced Config documentation]({% link docs/advanced_config.md %}).

## Steps to Build Custom Components

1. **Assess Needs**: Determine which type of component you need to customize based on your application's requirements—whether an Output Adapter, Trigger, or Provider.

2. **Development**: Implement the custom component by adhering to the specified interfaces and methods required for that component type.
  - For Output Adapters, follow the required properties and methods outlined.
  - For Triggers, use activation mechanisms suitable for your agents.
  - For Providers, ensure seamless integration with the targeted AI model API.

3. **Testing and Validation**: Rigorously test your custom components in isolation and as part of broader workflows to ensure reliability and performance.

4. **Documentation**: Maintain clear and comprehensive documentation for each custom component to facilitate ongoing maintenance and further development by yourself or other team members.

By leveraging and customizing these components, you can fully extend Sublayer's capabilities to fit your unique use cases.
