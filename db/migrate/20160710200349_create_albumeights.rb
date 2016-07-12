class CreateAlbumeights < ActiveRecord::Migration
  def change
    create_table :albumeights do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
