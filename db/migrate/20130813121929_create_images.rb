class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :album_id
      t.string :image
      t.string :title
      t.string :caption
      t.boolean :is_profile_photo

      t.timestamps
    end
  end
end
