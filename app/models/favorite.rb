class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :team

  validates :user_id, uniquness: { scope: :team_id }
end
