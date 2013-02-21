class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
  				  :display_name, :background
  # attr_accessible :title, :body
  validates :display_name, :presence => true

  has_many :posts

  has_many :text_posts
  has_many :link_posts
  has_many :image_posts

  def relation_for(type)
    # child_type_for_name (pass type and get a symbol)
    type = type.gsub(/Item/i, "Post").underscore.pluralize.to_sym
    self.send(type).scoped rescue text_posts.scoped
  end

  def background_image
    background || "dashboard.jpg"
  end

  def avatar
    Gravatar.new(self.email).image_url
  end

end
