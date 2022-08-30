class User < ApplicationRecord
  has_many :activities
  has_many :availabilities
  has_many :seekings

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
