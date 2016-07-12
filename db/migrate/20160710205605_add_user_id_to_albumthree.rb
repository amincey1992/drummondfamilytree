class AddUserIdToAlbumthree < ActiveRecord::Migration
  def change
    add_column :albumthrees, :user_id, :integer
  end
end
