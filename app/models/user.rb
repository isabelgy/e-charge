class User < ApplicationRecord
  has_many :stations, :through => :rentals
  has_many :rentals, dependent: :destroy
  # validates :password, presence: true
  # validates :openid, presence: true
  # devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
