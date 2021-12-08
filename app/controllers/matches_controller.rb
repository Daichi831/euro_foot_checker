# frozen_string_literal: true

class MatchesController < ApplicationController

  def index
    @favorite_teams = current_user.favorites_teams
  end

end
