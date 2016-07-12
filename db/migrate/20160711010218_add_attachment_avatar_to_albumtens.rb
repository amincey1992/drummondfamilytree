class AddAttachmentAvatarToAlbumtens < ActiveRecord::Migration
  def self.up
    change_table :albumtens do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :albumtens, :avatar
  end
end
