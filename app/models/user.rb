class User < ApplicationRecord
  self.ignored_columns = %i[name]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :email, presence: true, uniqueness: true

  has_many :favorites, dependent: :destroy
  has_many :favorites_teams, through: :favorites, source: :team

  def favorite(team)
    favorites_teams << team
  end

  def unfavorite(team)
    favorites_teams.delete(team)
  end

  def favorite?(team)
    favorites_teams.include?(team)
  end

end
