class Car < ActiveRecord::Base
  has_many :car_users
  has_many :users, through: :car_users
end
