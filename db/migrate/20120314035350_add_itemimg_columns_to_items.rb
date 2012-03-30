class AddItemImgColumnsToItems < ActiveRecord::Migration
  def self.up
  	add_column :items, :Itemimg_file_name,    :string
    add_column :items, :Itemimg_content_type, :string
    add_column :items, :Itemimg_file_size,    :integer
    add_column :items, :Itemimg_updated_at,   :datetime 
     #change_table :items do |t|
      #t.has_attached_file :Itemimg
  end

  def self.down
  	remove_column :items, :Itemimg_file_name
    remove_column :items, :Itemimg_content_type
    remove_column :items, :Itemimg_file_size
    remove_column :items, :Itemimg_updated_at
    #drop_attached_file :items, :Itemimg
  end
end
