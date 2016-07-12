class AddUserIdToAlbumten < ActiveRecord::Migration
  def change
    add_column :albumtens, :user_id, :integer
  end
end
