class TextPost < Post
  # attr_accessible :title, :body
  validates :content, :length => {:maximum => 512}
  
  validate do
  	self.errors[:base] << "Message is required" if self.content.blank?
  end

end
