class CreateSetItems < ActiveRecord::Migration[5.0]
  def change
    create_table :set_items do |t|
      t.integer :order
      t.integer :set
      t.integer :song_id
      t.integer :set_list_id

      t.timestamps
    end
    add_index :set_items, :song_id
    add_index :set_items, :set_list_id
  end
end
