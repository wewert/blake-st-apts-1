class OwnerCleaners < ActiveRecord::Base
  belongs_to :owner
  belongs_to :cleaner
end
