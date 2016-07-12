class AddAttachmentAvatarToAlbumeights < ActiveRecord::Migration
  def self.up
    change_table :albumeights do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :albumeights, :avatar
  end
end
