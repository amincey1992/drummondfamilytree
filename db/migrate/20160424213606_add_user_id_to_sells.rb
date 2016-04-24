class AddUserIdToSells < ActiveRecord::Migration
  def change
    add_column :sells, :user_id, :integer
  end
end
