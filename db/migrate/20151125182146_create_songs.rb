class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :singername
      t.string :songtitle
      t.integer :releaseyear
      t.string :albumtitle
      t.boolean :favorite
      t.integer :songlength

      t.timestamps null: false
    end
  end
end
