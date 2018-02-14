class Character < ApplicationRecord
  has_many :characterbooks
  has_many :books, through: :characterbooks
  validates :name, presence: true, uniqueness: true
end
