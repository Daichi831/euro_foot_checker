# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :home_matches, class_name: 'Match', foreign_key: 'home_team_id', dependent: :destroy
  has_many :away_matches, class_name: 'Match', foreign_key: 'away_team_id', dependent: :destroy
  belongs_to :league
  self.ignored_columns = %i[standing]
  
  def last_match(team_id)
    if Match.where(home_team_id: team_id).or(Match.where(away_team_id: team_id)).present?
      Match.where(home_team_id: team_id).or(Match.where(away_team_id: team_id)).last
    end
  end
end
