---
title: Custom Components
nav_order: 4
---

# Custom Components

The Sublayer framework is designed to be extensible and customizable. Here, we provide examples and use-cases for extending Sublayer via the CLI.

Beyond just building your own Generators, Actions, and Agents, you can also create your own custom Output Adapters for your Generators, Triggers for your Agents, and Providers for any custom model you're working with.

### CLI Example: Create Custom Triggers
```bash
sublayer generate:agent --description "An agent with custom triggers that performs actions on specific conditions"
```

#### Example Use-Case:
1. **Scenario**: Monitor a folder for new files and process them as they arrive.
2. **Implementation**: Use a CLI-generated agent with file-change triggers to automate processing tasks.

### CLI Example: Generate Output Adapters
```bash
sublayer generate:generator --description "An output adapter that formats API responses into structured data for analytics"
```

#### Example Use-Case:
1. **Scenario**: Transform raw API data into charts and graphs for reporting.
2. **Implementation**: Employ custom output adapters for transforming and visualizing data.

* [Output Adapters]({% link docs/custom_components/output-adapters.md %})
* [Triggers]({% link docs/custom_components/triggers.md %})

---
