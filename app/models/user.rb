class User < ActiveRecord::Base
  attr_accessible :email, :name
  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  
  def a_method_used_for_validation_purposes
	errors[:name] = "Please enter your name"
	erros[:email] = "Please enter your email"
  end
	
end
