---
title: Custom Providers
parent: Custom Components
nav_order: 3
---
# Custom Providers

The Sublayer framework allows you to integrate custom AI providers in addition to the default ones offered by the system. This guide will walk you through the steps necessary to add a new provider using hooks and configuration settings.

## Overview
Integrating custom AI providers involves configuring the necessary API endpoints, setting up authentication, and ensuring that your provider's outputs can be processed within the Sublayer framework.

## Step-by-Step Guide

1. **Locate Provider Configurations:**
   - Navigate to the `lib/sublayer/providers` directory. This contains the base configuration and existing implementations for current AI providers.

2. **Create a New Provider Class:**
   - Using the existing providers as a reference, create a new Ruby class for your provider. Ensure this class implements the necessary API calls and response handling.

3. **Set Environment Variables: **
   - Add any required environment variables for API keys or tokens. Ensure these are added to your `.env` file or your server's environment configuration.

4. **Modify Configuration File:**
   - Update your project's configuration to include the new provider.

   ```ruby
   Sublayer.configuration.ai_provider = Sublayer::Providers::YourCustomProvider
   Sublayer.configuration.ai_model = "model-name"
   ```

5. **Testing:**
   - Thoroughly test your provider to ensure it correctly interacts with the Sublayer framework and your application business logic.

6. **Documentation:**
   - Document any unique setup steps or configurations required for your provider in your application's README or a dedicated documentation page.

By following these steps, you can extend the capabilities of Sublayer to use AI models of your choice, catering to specific application requirements or preferences.