class AddPlandesToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :plandes, :string
  end

  def self.down
    remove_column :items, :plandes
  end
end
