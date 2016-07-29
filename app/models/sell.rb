class Sell < ActiveRecord::Base

  has_many :comments
  belongs_to :user

has_attached_file :avatar,
  :convert_options => { :all => '-auto-orient' },
  styles: { original: "", thumb: "200x200#" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
acts_as_votable
def score
  self.get_upvotes.size - self.get_downvotes.size
end

end
