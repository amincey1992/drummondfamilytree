class AddUserIdToAlbumfour < ActiveRecord::Migration
  def change
    add_column :albumfours, :user_id, :integer
  end
end
