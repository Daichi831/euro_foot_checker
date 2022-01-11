# frozen_string_literal: true

FactoryBot.define do
  factory :match do
    stadium { 'スタジアムA' }
    date { '2100-01-01T12:00:00+00:00' }
    home_team_score { '3' }
    away_team_score { '0' }
    home_team_id { '1' }
    away_team_id { '2' }
  end
end
