class Station < ApplicationRecord
  has_many :rentals
  has_many :users through :rentals

  validates: :location, presence: true
end
