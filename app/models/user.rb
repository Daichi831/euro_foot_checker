# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  self.ignored_columns = %i[standing]

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
