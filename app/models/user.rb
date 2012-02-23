class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  validates :password, :presence => true, :on => :create
  
  
  has_many :posts
end
