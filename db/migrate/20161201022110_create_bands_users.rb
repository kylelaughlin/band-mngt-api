class CreateBandsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :bands_users do |t|
      t.integer :band_id
      t.integer :user_id
    end

    add_index :bands_users, :band_id
    add_index :bands_users, :user_id

  end
end
