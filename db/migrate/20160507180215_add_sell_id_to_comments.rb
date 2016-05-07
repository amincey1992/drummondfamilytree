class AddSellIdToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :sell_id, index: true, foreign_key: true
  end
end
