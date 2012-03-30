class AddPlanstatuToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :planstatu, :string
  end

  def self.down
    remove_column :items, :planstatu
  end
end
