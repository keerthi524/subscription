class User < ApplicationRecord
	has_many :stories
	belongs_to :role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         def admin?
         	self.role.name == "admin"
         end

         def hr?
         	self.role.name == "hr"
         end

         def teamleader?
           self.role.name == "teamleader"
         end
end
