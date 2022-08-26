class User < ApplicationRecord
  has_many :activities
  has_many :availabilities
  has_many :seekings
end
