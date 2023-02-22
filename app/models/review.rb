class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, :content, presence: true, allow_nil: false, allow_blank: false
  validates :rating, inclusion: { in: (0..5) }, numericality: { only_integer: true }
end
