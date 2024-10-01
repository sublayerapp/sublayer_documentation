# Sublayer Documentation

Welcome to the Sublayer documentation! This guide will help you get started with using the Sublayer framework to build AI-driven applications in Ruby.

## Installation

To install Sublayer, add this line to your application's Gemfile:

```ruby
gem 'sublayer', '~> 0.2.7'
```

And then execute:

```shell
$ bundle install
```

Or install it yourself as:

```shell
$ gem install sublayer
```

### Quick Start

Sublayer consists of three core components:

- **Generators**: Responsible for taking input and generating new data using AI models.
- **Actions**: Execute specific operations like processing the generated data or using it within your application.
- **Agents**: Automate workflows by combining Generators and Actions into cohesive units.

For a quick start with Sublayer, please refer to our [Quick Start Guide](docs/quick_start.md).

## CLI Commands

Sublayer includes several CLI commands to facilitate creating and managing different types of projects:

- **CLI Projects**: Create command-line interface projects easily with `cli_project.rb`. This allows for rapid bootstrapping of CLI tools that leverage the power of AI.
  
- **GitHub Action Projects**: Use `github_action_project.rb` to integrate AI capabilities into GitHub workflows, automating actions directly from your repositories.

- **Quick Script Projects**: With `quick_script_project.rb`, quickly set up scripts for short and efficient AI tasks.

For more detailed examples and options, consult the [CLI Commands Reference](docs/cli_commands.md).

## Advanced Configuration

Sublayer supports various AI providers and models. Configuration involves setting environment variables for API keys and selecting appropriate models.

### Supported Providers and Models

- **OpenAI**: Models such as `gpt-4o` provide advanced language understanding and generation.
- **Anthropic Claude**: Models like `claude-3-haiku-20240307` offer powerful performance for specific tasks.
- **Google Gemini**: Use models like `gemini-1.5-flash-latest` for diverse AI tasks.

For detailed setup instructions, visit our [Advanced Config](docs/advanced_config.md) section.

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/sublayerapp/sublayer](https://github.com/sublayerapp/sublayer). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Copyright

&copy; 2024 Sublayer, Inc. All rights reserved. Visit our [website](https://sublayer.com) for more information.