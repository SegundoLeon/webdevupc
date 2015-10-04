class Address < ActiveRecord::Base
  belongs_to :profile
  belongs_to :district
  
  has_many :service_from_address, class_name: 'Service', foreign_key: 'from_address_id'
  has_many :service_to_address, class_name: 'Service', foreign_key: 'to_address_id'  
end
