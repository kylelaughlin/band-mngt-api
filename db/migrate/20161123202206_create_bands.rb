class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :manager_id
      t.string :token

      t.timestamps
    end
  end
end
