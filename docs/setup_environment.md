---
layout: default
title: Setup Environment
nav_order: 2
---

# Setup Environment for Sublayer Projects

This guide provides instructions on setting up your development environment for working with Sublayer projects. Proper setup ensures you can contribute effectively and run projects without encountering common setup errors.

## Prerequisites

- **Ruby**: Ensure you have Ruby installed. Preferred version is Ruby 3.x or later.
- **Bundler**: Bundler is used for managing dependencies. Install it using: `gem install bundler`.
- **Git**: Required for version control and to clone repositories.

## Setup Instructions

### Clone the Repository

First, clone the Sublayer repository to your local environment:

```bash
git clone https://github.com/sublayerapp/sublayer.git
cd sublayer
```

### Install Dependencies

Install the required gems using Bundler.

```bash
bundle install
```

### Configure Environment Variables

Some functionality may require specific API keys. You should set these in your environment:

```bash
export OPENAI_API_KEY="your-api-key"
export GEMINI_API_KEY="your-beta-api-key"
export ANTHROPIC_API_KEY="your-anthropic-api-key"
```

## Platform-Specific Instructions

### Linux

Install dependencies and Ruby through your package manager:

```bash
sudo apt-get install ruby-full build-essential zlib1g-dev
gem install bundler
```

### Windows

Use RubyInstaller to setup Ruby and DevKit. Follow [these instructions](https://rubyinstaller.org/add-ons/devkit.html) to set up on Windows.

### macOS

Install Ruby using Homebrew:

```bash
brew install ruby
```

Ensure the correct gem version is available by updating your PATH in your shell configuration file (e.g., `~/.zshrc` or `~/.bash_profile`):

```bash
export PATH="/usr/local/opt/ruby/bin:$PATH"
```

## Testing Your Setup

To ensure that the setup is correct, run the Jekyll server that serves the documentation site:

```bash
bundle exec jekyll serve
```

Visit `http://localhost:4000` in your browser to verify the site is up and running.

## Troubleshooting

If you encounter issues, ensure all dependencies are correctly installed and the environment variables are set. Refer to our [Troubleshooting Guide](/docs/troubleshooting.md) for more assistance.