class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|
      t.string :name
      t.string :email
      t.string :title
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
