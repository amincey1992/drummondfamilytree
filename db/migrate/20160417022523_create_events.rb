class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :when
      t.string :where
      t.text :description

      t.timestamps null: false
    end
  end
end
