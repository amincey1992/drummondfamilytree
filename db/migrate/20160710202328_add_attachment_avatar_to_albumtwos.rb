class AddAttachmentAvatarToAlbumtwos < ActiveRecord::Migration
  def self.up
    change_table :albumtwos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :albumtwos, :avatar
  end
end
