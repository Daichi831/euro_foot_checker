# frozen_string_literal: true

class API::TeamsController < API::BaseController
  def index
    @teams = Team.all
    render json: @teams
  end
end
