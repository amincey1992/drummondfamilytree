class AddCategoryToForums < ActiveRecord::Migration
  def change
    add_column :forums, :category, :string
  end
end
