class AddAttachmentAvatarToAlbumones < ActiveRecord::Migration
  def self.up
    change_table :albumones do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :albumones, :avatar
  end
end
