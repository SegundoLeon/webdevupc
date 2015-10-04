class Cost < ActiveRecord::Base
  belongs_to :from_district, class_name: 'District'
  belongs_to :to_district, class_name: 'District'
end