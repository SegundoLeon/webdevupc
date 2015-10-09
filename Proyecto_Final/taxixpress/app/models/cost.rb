class Cost < ActiveRecord::Base
  belongs_to :from_district, class_name: 'District'
  belongs_to :to_district, class_name: 'District'
  
  validates :estimated_cost, presence:true
  validates :from_district, presence:true
  validates :to_district, presence:true
  
end
