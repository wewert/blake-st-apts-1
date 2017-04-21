class CarUser < ActiveRecord
  belongs_to :cars
  belongs_to :users
end
