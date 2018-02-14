class Book < ApplicationRecord
  has_many :characterbooks
  has_many :characters, through: :characterbooks
  validates :book_name, presence: true, uniqueness: true
end
