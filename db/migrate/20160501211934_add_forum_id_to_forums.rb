class AddForumIdToForums < ActiveRecord::Migration
  def change
    add_column :forums, :forum_id, :integer
  end
end
