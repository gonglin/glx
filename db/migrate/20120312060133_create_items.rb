class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :title
      t.text :des
      t.string :location
      t.string :Longitude
      t.string :Latitude
      t.string :statue

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
