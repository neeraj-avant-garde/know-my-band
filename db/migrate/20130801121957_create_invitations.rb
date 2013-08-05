class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.references :user, :event 
      t.integer :user_id
      t.integer :event_id
      t.string :status

      t.timestamps
    end
  end
end
