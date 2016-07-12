class AddAttachmentAvatarToAlbumnines < ActiveRecord::Migration
  def self.up
    change_table :albumnines do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :albumnines, :avatar
  end
end
