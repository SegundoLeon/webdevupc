class Address < ActiveRecord::Base

  belongs_to :district
  belongs_to :user
  
  has_many :service_from_address, class_name: 'Service', foreign_key: 'from_address_id'
  has_many :service_to_address, class_name: 'Service', foreign_key: 'to_address_id'  
  
  #scope :myuser, -> { where(profile_id: myuser) }
end
