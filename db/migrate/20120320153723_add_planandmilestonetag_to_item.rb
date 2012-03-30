class AddPlanandmilestonetagToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :plantag, :int, :default => 0
    add_column :items, :milestonetag, :int, :default => 0
  end

  def self.down
    remove_column :items, :milestonetag
    remove_column :items, :plantag
  end
end
