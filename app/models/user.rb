class User < ActiveRecord::Base
  attr_accessible :active, :admin, :email, :password_confirmation
end