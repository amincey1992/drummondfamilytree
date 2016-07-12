class AddUserIdToAlbumsix < ActiveRecord::Migration
  def change
    add_column :albumsixes, :user_id, :integer
  end
end
