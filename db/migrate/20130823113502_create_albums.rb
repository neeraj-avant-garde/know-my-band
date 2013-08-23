class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
