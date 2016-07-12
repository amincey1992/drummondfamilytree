class CreateAlbumtwos < ActiveRecord::Migration
  def change
    create_table :albumtwos do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
