class Season < ApplicationRecord
  has_many :episodes
  validates :season_number, presence: true
  # validates :premiere_date, :end_date, timeliness: {on_or_before: lambda {Date.current}, type: :date}
end
