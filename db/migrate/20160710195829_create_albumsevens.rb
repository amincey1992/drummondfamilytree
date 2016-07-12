class CreateAlbumsevens < ActiveRecord::Migration
  def change
    create_table :albumsevens do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
