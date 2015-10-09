class Service < ActiveRecord::Base
  belongs_to :user
  belongs_to :from_address, class_name: 'Address'
  belongs_to :to_address, class_name: 'Address'
  belongs_to :vehicle_type
  belongs_to :payment_method
  belongs_to :vehicle
  validates :passengers, presence:true
  validates :payment, presence:true
  validates :vehicle_type, presence:true
  validates :payment_method, presence:true
  validates :rate, presence:true
  
  def user_name
      self.user.name
  end
  
  def payment_method_name
      self.payment_method.name
  end
  
  def vehicle_type_name
      self.vehicle_type.name
  end
  
  def from_address_name
      self.from_address.name
  end
  
  def to_address_name
      self.to_address.name
  end
  
end
