---
title: Actions
parent: Resources
---

# Actions

Actions are similar to tools in other agent frameworks. You use them to gather
information from different sources to put into a prompt in a [Generator]({% link
docs/concepts/generators %}), or to perform some
action based on data received back from a [Generator]({% link docs/concepts/generators %}).

This is a list of Actions that have been verified by the Sublayer team and
community. New Actions are constantly being created by the Sublayer team, the community,
and AI agents running in GithubActions and added to this list.

You can use any of the Actions listed here directly or repurpose them for your
own custom use cases.

## List of Actions
View the entire repository of Actions on GitHub: [Sublayer Actions](https://github.com/sublayerapp/sublayer_actions)

### AI Utilities

[GetContextAction](https://github.com/sublayerapp/sublayer_actions/blob/bf60fd87242ae7ab13ad544bc2e22a10c4ee2750/AI_Utilities/get_context_action.rb): Generate a concatenated string of all the files in a directory, respecting a `.contextignore` file that lists files to ignore.

### Asana

[AsanaCreateTaskAction](https://github.com/sublayerapp/sublayer_actions/blob/bf60fd87242ae7ab13ad544bc2e22a10c4ee2750/Asana/asana_create_task_action.rb): Create a task in an Asana project

[AsanaGetLatestCommentAction](https://github.com/sublayerapp/sublayer_actions/blob/bf60fd87242ae7ab13ad544bc2e22a10c4ee2750/Asana/asana_get_latest_comment_action.rb): Get the latest comment on a particular Asana task

[AsanaGetTaskDescriptionAction](https://github.com/sublayerapp/sublayer_actions/blob/bf60fd87242ae7ab13ad544bc2e22a10c4ee2750/Asana/asana_get_task_description_action.rb): Get the description of a particular Asana task

[AsanaGetTaskNameAction](https://github.com/sublayerapp/sublayer_actions/blob/bf60fd87242ae7ab13ad544bc2e22a10c4ee2750/Asana/asana_get_task_name_action.rb): Get the name of a particular Asana task

### Github

[GithubCreateBranchAction](https://github.com/sublayerapp/sublayer_actions/blob/bf60fd87242ae7ab13ad544bc2e22a10c4ee2750/Github/github_create_branch_action.rb): Create a branch in a Github repository

[GithubCreateFileAction](https://github.com/sublayerapp/sublayer_actions/blob/bf60fd87242ae7ab13ad544bc2e22a10c4ee2750/Github/github_create_file_action.rb): Create a file in a Github repository

[GithubCreatePRAction](https://github.com/sublayerapp/sublayer_actions/blob/bf60fd87242ae7ab13ad544bc2e22a10c4ee2750/Github/github_create_pr_action.rb): Create a pull request in a Github repository

[GithubModifyFileAction](https://github.com/sublayerapp/sublayer_actions/blob/bf60fd87242ae7ab13ad544bc2e22a10c4ee2750/Github/github_modify_file_action.rb): Modify a file in a Github repository

### Notion

[NotionCreateRowAction](https://github.com/sublayerapp/sublayer_actions/blob/bf60fd87242ae7ab13ad544bc2e22a10c4ee2750/Notion/notion_create_row_action.rb): Create a row in a Notion database

[NotionQueryDatabaseAction](https://github.com/sublayerapp/sublayer_actions/blob/bf60fd87242ae7ab13ad544bc2e22a10c4ee2750/Notion/notion_query_database_action.rb): Query a Notion database
