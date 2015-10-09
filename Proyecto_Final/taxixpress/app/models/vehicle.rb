class Vehicle < ActiveRecord::Base
  belongs_to :user
  belongs_to :vehicle_type
  has_many :services
  validates :brand, presence:true
  validates :model, presence:true
  validates :plate, presence:true, uniqueness: { case_sensitive: false }
  validates :status, presence:true
  validates :vehicle_type, presence:true
end


