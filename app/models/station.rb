class Station < ApplicationRecord
  has_many :rentals, dependent: :destroy
  has_many :users, :through => :rentals

  validates :location, presence: true
end
