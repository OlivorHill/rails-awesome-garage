class Owner < ApplicationRecord
  validates :nickname, presence: true, uniqueness: true

  has_many :cars
end
