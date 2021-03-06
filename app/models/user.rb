class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  attr_accessible :email, :password, :password_confirmation, :remember_me
         
  has_many :gadgets, dependent: :destroy
  
  paginates_per 12
  
end
