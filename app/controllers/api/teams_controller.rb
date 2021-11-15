# frozen_string_literal: true

class API::TeamsController < API::BaseController
  def index
    @premier_teams = Team.where(league_id: 1)
    @league1_teams = Team.where(league_id: 2)
    @bundes_teams = Team.where(league_id: 3)
    @seriea_teams = Team.where(league_id: 4)
    @liga_teams = Team.where(league_id: 5)
  end
end
