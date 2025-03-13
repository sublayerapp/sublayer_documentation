---
layout: default
title: Configuration Management
parent: Guides
nav_order: 3
---

# Configuration Management in Sublayer

Configuration management is central to the customizable nature of Sublayer. Having detailed instructions enables developers to better integrate the library into varied environments.

## Overview

Configuration management in Sublayer involves managing settings for different environments, setting default configurations, and allowing for dynamic runtime changes.

## Environment Management

- **Development**: Set configurations that are optimal for development, often with verbose logging and debug information enabled.
- **Testing**: Tailor configurations for running tests, usually prioritizing stability and reproducibility.
- **Production**: Ensure configurations enhance performance and security.

## Setting Defaults

Sublayer allows you to set default configurations that serve as the base for application behavior:

```yaml
# config/sublayer.yml
default:
  logging: true
  log_level: 'info'
  performance_mode: 'auto'
```

## Runtime Changes

You can override configurations during runtime to adapt to specific changes, such as scaling resources or changing log verbosity:

```ruby
Sublayer.configure do |config|
  config.log_level = 'debug' if ENV['DEBUG_MODE']
end
```

## Examples

Detailed examples of configuration setups for various tasks can further enhance understanding and usability among developers. Incorporating these will be useful for anyone working with disparate environments.