class Cleaner < ActiveRecord::Base
  has_many :owner_cleaners
  has_many :owners, through: :owner_cleaners
end
