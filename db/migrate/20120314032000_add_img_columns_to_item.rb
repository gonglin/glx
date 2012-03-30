class AddImgColumnsToItem < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.has_attached_file :img
    end
  end

  def self.down
    drop_attached_file :items, :img
  end
end
