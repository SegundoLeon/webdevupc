class Vehicle < ActiveRecord::Base
  belongs_to :profile
  belongs_to :vehicle_type
end
