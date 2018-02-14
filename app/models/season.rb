class Season < ApplicationRecord
  has_many :episodes
  validates :season_number, :summary, presence: true
end
