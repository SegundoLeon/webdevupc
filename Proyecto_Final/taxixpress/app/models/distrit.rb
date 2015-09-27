class Distrit < ActiveRecord::Base
    has_many :from_distrit_cost, :class_name => 'Cost', :foreign_key => 'from_distrit_id'
    has_many :to_distrit_cost, :class_name => 'Cost', :foreign_key => 'to_distrit_id'
end
