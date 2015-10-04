class VehicleType < ActiveRecord::Base
    has_many :vehicles
    has_many :services
end
