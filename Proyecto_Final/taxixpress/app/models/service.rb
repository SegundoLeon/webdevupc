class Service < ActiveRecord::Base
  belongs_to :user
  belongs_to :from_address, class_name: 'Address'
  belongs_to :to_address, class_name: 'Address'
  belongs_to :vehicle_type
  belongs_to :payment_method
  belongs_to :vehicle
  validates :from_district, presence:true
  validates :to_district, presence:true
  validates :passengers, presence:true
  validates :payment, presence:true
  validates :vehicle_type, presence:true
  validates :payment_method, presence:true
  validates :vehicle, presence:true
  validates :rate, presence:true
end
