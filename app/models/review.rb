class Review < ApplicationRecord
  validates :comment, presence: true, length: { minmum: 6, allow_blank: false }
  validates :rating, presence: true, numericality: { only_integer: true }

  belongs_to :car
end
