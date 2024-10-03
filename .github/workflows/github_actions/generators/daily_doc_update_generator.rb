class DailyDocUpdateGenerator < Sublayer::Generators::Base
  llm_output_adapter type: :list_of_named_strings,
    name: "files_and_contents",
    description: "A list of files to update along with their corresponding updated contents",
    item_name: "file_update",
    attributes: [
      { name: "explanation", description: "Brief explanation for how a change to a specified file makes progress towards the suggested update." },
      { name: "file_path", description: "The path of the file to update" },
      { name: "file_content", description: "The updated content for the file" }
    ]

  def initialize(doc_update_suggestion:, doc_context:, code_context:, context_ignore_list:)
    @doc_update_suggestion = doc_update_suggestion
    @doc_context = doc_context
    @code_context = code_context
    @context_ignore_list = context_ignore_list
  end

  def generate
    super
  end

  def prompt
    <<~PROMPT
      You are tasked to make files changes in the documentation repository based on a suggestion.

      Use the following information to guide both tasks:

      1. Documentation update suggestion:
      #{@doc_update_suggestion}

      2. Documentation repository structure:
      #{@doc_context}

      3. Code repository structure:
      #{@code_context}

      4. Files excluded from updates (do not modify these files):
      #{@context_ignore_list}

      5. Example of doc format:
---
layout: default
title: Documentation Overview
nav_order: 1
has_children: true
has_toc: true
permalink: /docs/overview/
---

# Documentation Overview
<!-- This is the main title of your page. Use heading levels for section hierarchies. -->

Just the Docs is a responsive, Jekyll theme for GitHub Pages designed with simplicity in mind.
<!-- Add introductory text here. Use markdown to structure content with lists, code blocks, tables, etc. -->

## Table of Contents
<!-- You can add a table of contents manually, but Just the Docs will auto-generate one if has_toc: true is enabled in the front matter above. -->

- [Page Structure](#page-structure)
- [Configuration](#configuration)
- [Navigation](#navigation)

---

## Page Structure
<!-- Use second-level headings (##) for main sections. -->

### Front Matter
<!-- Front matter is used for Jekyll page configuration, typically enclosed in "---". -->

```yaml
---
layout: default
title: Page Title
nav_order: 2
has_children: true
---
```

- `layout`: Defines which layout template is used. For example, `default` is the standard layout.
- `title`: The title of the page, displayed in the browser tab and in the site's navigation.
- `nav_order`: Determines the order in the navigation menu.
- `has_children`: Set to `true` if this page has sub-pages.

### Markdown Content
<!-- The core content is written in markdown, allowing for easy formatting of text, lists, tables, and more. -->

```markdown
# Main Heading
## Subheading
Content goes here.
```

---

## Configuration
<!-- This section can be used to describe how to configure the theme. -->

Just the Docs allows for several configuration options, such as:

- **theme settings** in `_config.yml`:

```yaml
# _config.yml
title: My Site
description: A simple documentation theme for GitHub Pages
```

- `title`: The site title shown in the browser and the main header.
- `description`: A brief description of your documentation.

---

## Navigation
<!-- This section covers navigation settings in the site. -->

Navigation is handled automatically based on the files in the `_docs` directory. You can manually configure order using front matter, or rely on alphabetical sorting.

```yaml
# Navigation example in front matter
nav_order: 3
parent: Documentation Overview
```

- `parent`: Links the current page to a parent page.
- `nav_order`: Orders pages within the parent group.

### Nested Navigation
<!-- If your documentation requires deeper structure, you can create nested pages. -->

Use `has_children: true` in a parent page, and each child page will automatically link back.

```yaml
---
layout: default
title: Child Page
parent: Documentation Overview
nav_order: 1
---
```

This page will now appear nested under "Documentation Overview."

---

## Search Functionality
<!-- Just the Docs includes built-in search capabilities. -->

Just the Docs supports full-text search across your documentation. Make sure to enable search in `_config.yml`:

```yaml
# Enable search
search_enabled: true
```

This will add a search bar at the top of your documentation site.

---

## Code Examples
<!-- Code blocks can be formatted with syntax highlighting. -->

You can add code snippets with syntax highlighting, using triple backticks and the language name:

```ruby
# Ruby code example
def hello_world
  puts "Hello, world!"
end
```

### Inline Code
<!-- For inline code, wrap the text in backticks. -->
Use `backticks` for inline code formatting.

---

## Images and Media
<!-- Media can be embedded using standard markdown or HTML. -->

To include images:

```markdown
![Alt text](path/to/image.png)
```

Or use HTML for more control:

```html
<img src="path/to/image.png" alt="Alt text" width="600">
```

---

## Lists and Tables
<!-- Lists and tables are formatted using standard markdown. -->

- Bullet point list
  - Sub-list item
1. Numbered list

Tables:

```
| Column 1 | Column 2 |
|----------|----------|
| Item 1   | Item 2   |
```

---

## Footer
<!-- Custom footers can be defined in the _config.yml or directly on pages. -->

Footer content can be customized in the `footer.html` file located in `_includes`.

```html
<footer>
  &copy; 2024 My Documentation Site
</footer>
```

      Your task:
      Generate the full updated content for each file that should be changed according to the suggestion.

      Guidelines:
      1. Do not make updates to any files that are in the .contextignore
      2. Follow the format given in the example as a template for the structure of your file
      3. If a new page is added make sure to add them to the navigation as well
    PROMPT
  end
end
