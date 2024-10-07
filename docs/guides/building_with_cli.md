---
title: "Building with CLI"
parent: Guides
nav_order: 4
---

# Building a Simple Sublayer Project Using CLI

This guide provides a step-by-step walkthrough on building a simple Sublayer project using the Command Line Interface (CLI). Follow along to create your first project seamlessly.

## Prerequisites

Before you begin, ensure you have the following:

- Ruby installed on your system.
- Access to the terminal or command line.
- Familiarity with basic command line operations.

## Step-by-Step Walkthrough

1. **Install Sublayer Gem**
   
   Firstly, ensure you have the Sublayer gem installed. You can do this via:
   
   ```shell
   gem install sublayer
   ```

2. **Initialize a New Project**

   Use the Sublayer CLI to create a new project. Run:
   
   ```shell
   sublayer new my_project
   ```

   This command sets up a new directory `my_project` with the necessary files.

3. **Navigate to Your Project Directory**

   Change directory into your newly created project:

   ```shell
   cd my_project
   ```

4. **Configure Environment Variables**

   Make sure your OpenAI API key is configured correctly:
   
   ```shell
   export OPENAI_API_KEY="your-api-key"
   ```

5. **Create a Generator**

   Use the built-in generator command to create a new Generator within your project:

   ```shell
   sublayer generate:generator --description "Example generator"
   ```

6. **Implement a Simple Task**

   Using the created generator, implement a simple function like a text response mechanism or data processor.

7. **Run Your Project**

   Execute your main script to see your project in action:

   ```shell
   ruby my_project.rb
   ```

## Conclusion

Following these steps, you can set up and run a simple Sublayer project using the CLI. Modify and expand your project to explore more features offered by Sublayer.