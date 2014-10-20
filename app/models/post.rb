class Post < ActiveRecord::Base
  attr_accessible :content, :topic_id, :user_id, :forum_id
  belongs_to :user
  belongs_to :topic
  validates :content, presence: true
end
