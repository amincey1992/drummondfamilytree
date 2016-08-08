class AddUserIdToCommentSell < ActiveRecord::Migration
  def change
    add_column :comment_sells, :user_id, :integer
  end
end
