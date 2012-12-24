class Report < ActiveRecord::Base

end

class User < ActiveRecord::Base
  attr_accessible :active, :username, :admin, :email, :password, :password_confirmation
  has_many :posts
end

class Post < ActiveRecord::Base
  attr_accessible :created_at, :lock, :my_answer, :qanda_id, :updated_at, :user_email, :user_id
  belongs_to :user
  belongs_to :qanda
end
