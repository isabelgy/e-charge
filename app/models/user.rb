class User < ApplicationRecord
  has_many :stations, :through => :rentals
  has_many :rentals, dependent: :destroy
  # devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
