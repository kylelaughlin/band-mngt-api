class CreateSetLists < ActiveRecord::Migration[5.0]
  def change
    create_table :set_lists do |t|
      t.string :name
      t.date :performance_date
      t.integer :band_id

      t.timestamps
    end
    add_index :set_lists, :band_id
  end
end
