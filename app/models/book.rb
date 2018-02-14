class Book < ApplicationRecord
  has_many :characterbooks
  has_many :characters, through: :characterbooks
  validates :name, presence: true
end
