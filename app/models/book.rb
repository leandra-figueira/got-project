class Book < ApplicationRecord
  has_many :stories
  has_many :characters, through: :stories
  validates :book_name, presence: true, uniqueness: true
end
