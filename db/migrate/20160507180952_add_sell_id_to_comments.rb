class AddSellIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :sell_id, :integer
  end
end
