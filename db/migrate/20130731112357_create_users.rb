class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :membership_type
      t.string :first_name
      t.string :last_name
      t.string :facebook_id
      t.boolean :is_confirmed
      t.boolean :is_active
      t.boolean :is_banned
      t.string :activation_hash

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
