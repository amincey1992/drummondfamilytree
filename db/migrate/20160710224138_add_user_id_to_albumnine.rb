class AddUserIdToAlbumnine < ActiveRecord::Migration
  def change
    add_column :albumnines, :user_id, :integer
  end
end
