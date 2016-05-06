class AddAttachmentAvatarToForums < ActiveRecord::Migration
  def self.up
    change_table :forums do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :forums, :avatar
  end
end
