class UserType < ActiveRecord::Base
    has_many :profiles
    validates :name, presence:true, uniqueness: { case_sensitive: false }
end
