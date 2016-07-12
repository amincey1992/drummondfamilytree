class CreateAlbumfours < ActiveRecord::Migration
  def change
    create_table :albumfours do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
