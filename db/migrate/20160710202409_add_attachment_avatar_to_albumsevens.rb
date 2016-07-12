class AddAttachmentAvatarToAlbumsevens < ActiveRecord::Migration
  def self.up
    change_table :albumsevens do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :albumsevens, :avatar
  end
end
