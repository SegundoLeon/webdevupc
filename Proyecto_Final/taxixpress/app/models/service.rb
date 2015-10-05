class Service < ActiveRecord::Base
  belongs_to :user
  belongs_to :from_address, class_name: 'Address'
  belongs_to :to_address, class_name: 'Address'
  belongs_to :vehicle_type
  belongs_to :payment_method
  belongs_to :vehicle
end
