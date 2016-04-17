class AddAttachmentAvatarToSells < ActiveRecord::Migration
  def self.up
    change_table :sells do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :sells, :avatar
  end
end
