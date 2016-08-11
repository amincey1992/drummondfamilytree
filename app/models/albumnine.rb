class Albumnine < ActiveRecord::Base

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

belongs_to :user
validates :title, :presence => true

acts_as_votable
 def score
  self.get_upvotes.size - self.get_downvotes.size
end
end
