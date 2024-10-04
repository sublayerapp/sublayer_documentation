---
title: Core Concepts
nav_order: 3
---

# Core Concepts

The framework is broken up into three core concepts: Generators, Actions, and Agents.

Browse the links below to go more in depth into each of these concepts:

* [Generators]({% link docs/concepts/generators.md %})
* [Actions]({% link docs/concepts/actions.md %})
* [Agents]({% link docs/concepts/agents.md %})

## Task: MakeRspecTestsPassTask

A newly introduced task, `MakeRspecTestsPassTask`, plays a significant role in Sublayer's capability for test-driven development. This task assists in running RSpec tests in an automated loop, modifying the related implementation files until the tests pass successfully. It is primarily built to streamline the development process by ensuring continuous alignment of implementation against defined tests. This is especially valuable for maintaining code quality and reliability in projects that require automated TDD. To implement this task, developers need to specify the relevant implementation file and the test command which will automatically be handled by the framework.