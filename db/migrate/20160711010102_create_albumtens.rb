class CreateAlbumtens < ActiveRecord::Migration
  def change
    create_table :albumtens do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
