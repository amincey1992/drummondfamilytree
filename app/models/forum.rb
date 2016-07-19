class Forum < ActiveRecord::Base
	

  has_many :comments
  belongs_to :user

has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

acts_as_votable
 def score
  self.get_upvotes.size - self.get_downvotes.size
end

  
end
