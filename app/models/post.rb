class Post < ActiveRecord::Base
  attr_accessible :comment, :content, :title, :type, :user_id

  belongs_to :user
end
