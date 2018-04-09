class User < ApplicationRecord
  has_many :stations, :through :rentals
  has_many :rentals
end
