class Topic < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  has_many :users, through: :posts
  attr_accessible :description, :title, :user_id
end
