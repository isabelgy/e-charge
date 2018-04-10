class Station < ApplicationRecord
  has_many :rentals, dependent: :destroy
  has_many :users, :through => :rentals

  validates :latitude, presence: true
  validates :longitude, presence: true
end
