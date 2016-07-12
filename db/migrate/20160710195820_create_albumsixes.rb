class CreateAlbumsixes < ActiveRecord::Migration
  def change
    create_table :albumsixes do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
