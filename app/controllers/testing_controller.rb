class TestingController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :push
  def index
    @client = Octokit::Client.new
  end

  def push
    binding.pry
  end
end
