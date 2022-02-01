# frozen_string_literal: true

class MatchesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    favorite_teams = current_user.favorites_teams
    matches = []
    favorite_teams.each do |favorite_team|
      match = favorite_team.last_match(favorite_team.id)
      matches << match
    end
    @matches = matches.uniq
  end

end
