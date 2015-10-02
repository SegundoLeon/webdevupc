class Profile < ActiveRecord::Base
  belongs_to :user_type
  has_many :vehicles
  has_many :addresses
  validates :name, presence:true, uniqueness: { case_sensitive: false }
  validates :mobilephone, presence:true, uniqueness: { case_sensitive: false }
end
