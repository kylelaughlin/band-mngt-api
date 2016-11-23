class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.boolean :active
      t.integer :band_id

      t.timestamps
    end
    add_index :songs, :band_id
  end
end
