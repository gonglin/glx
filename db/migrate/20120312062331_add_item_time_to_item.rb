class AddItemTimeToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :Item_time, :datetime
  end

  def self.down
    remove_column :items, :Item_time
  end
end
