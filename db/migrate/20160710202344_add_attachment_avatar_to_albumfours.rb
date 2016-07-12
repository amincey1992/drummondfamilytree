class AddAttachmentAvatarToAlbumfours < ActiveRecord::Migration
  def self.up
    change_table :albumfours do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :albumfours, :avatar
  end
end
