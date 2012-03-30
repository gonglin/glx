class AddUserInfoToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :pet_name, :string
    add_column :users, :des, :string
    add_column :users, :sex, :string
    add_column :users, :role, :string, :default => 0
    add_column :users, :statue, :string, :default => 0 
  end

  def self.down
    remove_column :users, :statue
    remove_column :users, :role
    remove_column :users, :sex
    remove_column :users, :des
    remove_column :users, :pet_name
  end
end
