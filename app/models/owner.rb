class Owner < ActiveRecord::Base
  has_many :units
  has_many :owner_cleaners
  has_many :cleaners, through: :owner_cleaners
end
