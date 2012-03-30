class AddImgUrlToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :img_url, :string
  end

  def self.down
    remove_column :items, :img_url
  end
end
