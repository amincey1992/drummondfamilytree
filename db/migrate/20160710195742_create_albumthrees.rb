class CreateAlbumthrees < ActiveRecord::Migration
  def change
    create_table :albumthrees do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
