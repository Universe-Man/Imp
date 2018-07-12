class Show < ApplicationRecord
  has_many :team_shows
  has_many :teams, through: :team_shows
end
