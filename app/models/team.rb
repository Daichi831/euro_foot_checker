# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :home_matches, class_name: 'Match', foreign_key: 'home_team_id', dependent: :destroy
  has_many :away_matches, class_name: 'Match', foreign_key: 'away_team_id', dependent: :destroy
  belongs_to :league
  
  def last_match(team_id)
    if Team.find(team_id).home_matches.or(Team.find(team_id).away_matches).present?
      Team.find(team_id).home_matches.or(Team.find(team_id).away_matches).order(date: :desc).first
    end
  end
end
