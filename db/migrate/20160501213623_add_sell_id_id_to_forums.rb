class AddSellIdIdToForums < ActiveRecord::Migration
  def change
    add_column :forums, :sell_id, :integer
  end
end
