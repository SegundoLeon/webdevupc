class Cost < ActiveRecord::Base
  belongs_to :from_distrit, class_name: 'Distrit'
  belongs_to :to_distrit, class_name: 'Distrit'
end