class CreateWhips < ActiveRecord::Migration
  def change
    create_table :whips do |t|
      t.string :name
      t.string :email
      t.string :model
      t.string :year
      t.string :integer
      t.text :mods

      t.timestamps null: false
    end
  end
end
