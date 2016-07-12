class AddUserIdToAlbumone < ActiveRecord::Migration
  def change
    add_column :albumones, :user_id, :integer
  end
end
