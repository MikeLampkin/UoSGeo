class Qanda < ActiveRecord::Base
  attr_accessible :meritbadge, :answer, :image, :position, :question
belongs_to :post
end
