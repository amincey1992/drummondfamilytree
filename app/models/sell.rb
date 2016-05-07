class Sell < ActiveRecord::Base

  has_many :comments
  belongs_to :user

has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png", :storage => :s3,  :bucket => 'atlanta-genesis-coupe-club', :s3_credentials => "#{Rails.root}/config/environments/production.rb", :path => "resources/:id/:style/:basename.:extension"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  

end
