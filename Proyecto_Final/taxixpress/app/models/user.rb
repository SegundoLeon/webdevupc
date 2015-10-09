class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :user_type
  has_many :addresses
  has_many :vehicles
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence:true
  validates :surname, presence:true
  
  # User Roles
  enum role: [:user, :operator, :admin]
  
  # Method to verify if user has the operator or admin role
  def admin_or_operator?
    self.admin? || self.operator?
  end
  
end
