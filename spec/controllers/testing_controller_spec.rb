require 'rails_helper'

RSpec.describe TestingController, type: :controller do
  let(:client) {
    Octokit::Client.new(
      login: ENV['OCTOKIT_TEST_GITHUB_LOGIN'],
      password: ENV['OCTOKIT_TEST_GITHUB_PASSWORD']
    )
  }
  describe 'Getting pushing a branch to GH' do
    it 'has access' do
      client.create_contents(
        'gitterrod/test_repo',
        "testfile#{DateTime.now.to_s}.txt",
        'text commit #1',
        'file content',
        branch: 'master'
      )
    end
  end

end
