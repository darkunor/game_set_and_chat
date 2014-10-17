class Topic < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  attr_accessible :description, :title, :user_id
end
