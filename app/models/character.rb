class Character < ApplicationRecord
  has_many :stories
  has_many :books, through: :stories
  validates :name, presence: true, uniqueness: true
end
