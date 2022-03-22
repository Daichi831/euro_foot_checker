# frozen_string_literal: true

class MatchesController < ApplicationController
  
  def index
    if user_signed_in?
      favorite_teams = current_user.favorites_teams
      matches = []
      favorite_teams.each do |favorite_team|
        match = favorite_team.last_match(favorite_team.id)
        matches << match
      end
      @matches = matches.uniq.compact
    else
      redirect_to new_user_session_path
    end
  end

end
