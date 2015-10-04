class District < ActiveRecord::Base
    has_many :addresses

    validates :name, presence:true


    has_many :cost_from_district, class_name: 'District', foreign_key: 'from_district_id'
    has_many :cost_to_district, class_name: 'District', foreign_key: 'to_district_id'    
end

