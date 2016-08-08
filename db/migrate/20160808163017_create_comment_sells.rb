class CreateCommentSells < ActiveRecord::Migration
  def change
    create_table :comment_sells do |t|
      t.string :author
      t.text :comment_entry

      t.timestamps null: false
    end
  end
end
