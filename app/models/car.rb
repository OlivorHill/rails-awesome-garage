class Car < ApplicationRecord
  validates :brand, :model, :fuel, presence: true
  validates :year, numericality: { less_than_or_equal_to: 2024, only_integer: true }

  belongs_to :owner
  has_many :favourites
  has_many :reviews
end
