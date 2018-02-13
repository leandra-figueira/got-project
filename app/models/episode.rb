class Episode < ApplicationRecord
  belongs_to :season
  validates :episode_number, :name, presence: true
  validates :episode_number, numericality: { only_integer: true }
end
