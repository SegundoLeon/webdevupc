class PaymentMethod < ActiveRecord::Base
    has_many :services
    validates :name, presence:true, uniqueness: { case_sensitive: false }
end
