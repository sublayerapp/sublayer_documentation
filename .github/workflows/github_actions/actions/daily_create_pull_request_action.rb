class DailyCreatePullRequestAction < Sublayer::Actions::Base
  def initialize(branch_name:, suggestion:)
    @branch_name = branch_name
    @suggestion = suggestion
  end

  def call
    client = Octokit::Client.new(access_token: ENV['ACCESS_TOKEN'])
    repo = 'sublayerapp/sublayer_documentation'
    base_branch = 'main'
    title = "Daily Doc Update Suggestion"
    body = "This PR contains daily documentation updates based on the following suggestion: #{@suggestion}"

    client.create_pull_request(repo, base_branch, @branch_name, title, body)
  end
end
