class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.decimal :lat
      t.decimal :lon
      t.datetime :shot_at
      t.string :user_name
      t.string :user_id
      t.string :photo_title
      t.string :url
      t.string :tags

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
