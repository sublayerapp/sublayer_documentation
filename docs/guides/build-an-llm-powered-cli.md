
---
title: Build an LLM-powered CLI with Sublayer
parent: Guides
---
# Build an LLM-powered CLI

## Introduction

This guide shows how to create a new CLI application project using Sublayer.

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.loom.com/embed/610a8c63d57542558972072f105d2029?sid=ea3207d6-1918-4f37-8134-9578069925f2" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

### Step 1 - Create a new Sublayer CLI project.

To generate a new CLI project, you can run the following command in your terminal:

%%%bash
sublayer new my_project
%%%

### Step 2 - Answer the prompts.

When prompted, select the CLI Project and your preferred AI provider and model. The default provider is OpenAI. Once you've provided your input, Sublayer will generate a new project based on the provided information.

### Step 3 - Add your API key.

After project creation, set your API key as an environment variable. If you selected OpenAI as the provider, the variable will be `OPENAI_API_KEY`; for Google, it will be `GEMINI_API_KEY`; and for Anthropic, it will be `ANTHROPIC_API_KEY`.

You can set the variable in your `.zshrc` or `.bashrc` file, or add it directly to your terminal:

%%%bash
export OPENAI_API_KEY="your-api-key"
%%%

### Step 4 - Install dependencies.

You can install the project dependencies by running:

%%%bash
bundle install
%%%

### Step 5 - Run your project!

Once the dependencies are installed, you can start working with your Sublayer project. The following command will run your new CLI application:

%%%bash
./bin/my_project
%%%

This will display a list of available commands, including an example command that can be used to get started. You can modify and expand the generated code to add new features and tailor the application to your specific requirements.
