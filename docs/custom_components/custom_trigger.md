---
title: Custom Trigger
parent: Custom Components
nav_order: 5
---
# Custom Trigger

Triggers in the Sublayer framework specify events that activate an agent to perform tasks. By creating custom triggers, you can expand Sublayer's ability to react to an extensive variety of conditions or events.

## Steps to Create a Custom Trigger

1. **Build the Trigger Class**
   - Define a new class inheriting `Sublayer::Triggers::Base`.
   - Implement the `setup` method to configure the event listening logic.

2. **Linking Triggers with Agents**
   - Integrate the trigger with an agent by using it in the `trigger` method of the agent.

3. **Example**
```ruby
module Sublayer
  module Triggers
    class CustomEventTrigger < Base
      def initialize(event_condition)
        @event_condition = event_condition
      end

      def setup(agent)
        # Logic to start listening or watching for @event_condition and call activate(agent) when met
      end
    end
  end
end
```

By developing custom triggers, agents can be tailored to respond to specific scenarios as dictated by dynamic application requirements, ensuring timely execution of actions.
