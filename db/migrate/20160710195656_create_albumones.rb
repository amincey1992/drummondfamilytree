class CreateAlbumones < ActiveRecord::Migration
  def change
    create_table :albumones do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
