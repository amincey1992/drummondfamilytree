class Comment < ActiveRecord::Base
	belongs_to :sell
	belongs_to :user
end
