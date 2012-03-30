class AddImg_toUser < ActiveRecord::Migration
  def self.up
  	add_column :users, :img_file_name,    :string
    add_column :users, :img_content_type, :string
    add_column :users, :img_file_size,    :integer
    add_column :users, :img_updated_at,   :datetime 
     #change_table :users do |t|
      #t.has_attached_file :img
  end

  def self.down
  	remove_column :users, :img_file_name
    remove_column :users, :img_content_type
    remove_column :users, :img_file_size
    remove_column :users, :img_updated_at
    #drop_attached_file :users, :img
  end
end
