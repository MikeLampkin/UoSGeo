class User < ActiveRecord::Base
  attr_accessible :active, :admin, :email, :password, :password_confirmation
  
  before_save :first_is_admin
  
  has_secure_password
  
  private
  
  def first_is_admin
     if User.count < 1
      self.admin = true
      self.active = true
    end
  end
end
