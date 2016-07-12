class AddUserIdToAlbumtwo < ActiveRecord::Migration
  def change
    add_column :albumtwos, :user_id, :integer
  end
end
