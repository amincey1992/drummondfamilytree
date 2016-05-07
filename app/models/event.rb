class Event < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png", s3_permissions: 'public-read'
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
