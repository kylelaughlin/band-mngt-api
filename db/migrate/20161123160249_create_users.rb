class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :band_id
      t.string :email
      t.string :password_digest
      t.boolean :is_manager

      t.timestamps
    end
  end
end
