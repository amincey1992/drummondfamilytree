class AddSellIdToCommentSell < ActiveRecord::Migration
  def change
    add_column :comment_sells, :sell_id, :integer
  end
end
