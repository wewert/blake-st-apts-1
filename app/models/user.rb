class User ActiveRecord:Base
  has_many :car_users
  has_many :cars, through: :car_users
end
