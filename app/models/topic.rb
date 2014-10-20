class Topic < ActiveRecord::Base
  attr_accessible :description, :title, :user_id, :forum_id
  belongs_to :user
  belongs_to :forum
  has_many :posts, :dependent => :destroy
  has_many :users, through: :posts
  validates :description, :title, presence: true
end
