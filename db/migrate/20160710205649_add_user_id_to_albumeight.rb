class AddUserIdToAlbumeight < ActiveRecord::Migration
  def change
    add_column :albumeights, :user_id, :integer
  end
end
