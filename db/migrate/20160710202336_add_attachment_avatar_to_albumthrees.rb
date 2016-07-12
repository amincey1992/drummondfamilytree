class AddAttachmentAvatarToAlbumthrees < ActiveRecord::Migration
  def self.up
    change_table :albumthrees do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :albumthrees, :avatar
  end
end
