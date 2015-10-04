class Vehicle < ActiveRecord::Base
  belongs_to :profile
  belongs_to :vehicle_type
  has_many :services
end
