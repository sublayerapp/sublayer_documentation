class DailyCreatePullRequestAction < Sublayer::Actions::Base
  def initialize(branch_name:, suggestion:, title:)
    @branch_name = branch_name
    @suggestion = suggestion
    @title = title
  end

  def call
    client = Octokit::Client.new(access_token: ENV['ACCESS_TOKEN'])
    repo = 'sublayerapp/sublayer_documentation'
    base_branch = 'main'
    title = @title
    body = "This PR contains daily documentation updates based on the following suggestion:\n#{@suggestion}"

    client.create_pull_request(repo, base_branch, @branch_name, title, body)
  end
end
