class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true, allow_nil: false, allow_blank: false
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian], message: "%{value} is not a right category." }
end
