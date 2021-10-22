# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :matches
  belongs_to :league
end
