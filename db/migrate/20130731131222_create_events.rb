class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.integer :start_time
      t.integer :end_time
      t.text :full_address
      t.string :latitude
      t.string :longitude
      t.string :repeat
      t.string :status

      t.timestamps
    end
  end
end
