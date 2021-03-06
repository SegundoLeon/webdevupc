class Address < ActiveRecord::Base
  belongs_to :district
  belongs_to :user
  
  has_many :service_from_address, class_name: 'Service', foreign_key: 'from_address_id'
  has_many :service_to_address, class_name: 'Service', foreign_key: 'to_address_id'  
  
  validates :name, presence:true
  validates :alias, presence:true, uniqueness: { case_sensitive: false }
  validates :district, presence:true
  
  #scope :myuser, -> { where(profile_id: myuser) }
  
  def district_name
      self.district.name
  end
  
  def user_name
      self.user.name
  end
  
end
