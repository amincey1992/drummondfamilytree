class AddUserIdToAlbumseven < ActiveRecord::Migration
  def change
    add_column :albumsevens, :user_id, :integer
  end
end
