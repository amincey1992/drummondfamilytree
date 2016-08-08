class AddAttachmentsAvatarToCommentSell < ActiveRecord::Migration
   def self.up
    change_table :comment_sells do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :comment_sells, :avatar
  end
end
