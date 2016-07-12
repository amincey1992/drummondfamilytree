class AddAttachmentAvatarToAlbumsixes < ActiveRecord::Migration
  def self.up
    change_table :albumsixes do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :albumsixes, :avatar
  end
end
