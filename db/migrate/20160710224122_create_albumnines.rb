class CreateAlbumnines < ActiveRecord::Migration
  def change
    create_table :albumnines do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
