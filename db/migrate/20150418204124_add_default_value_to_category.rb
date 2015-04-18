class AddDefaultValueToCategory < ActiveRecord::Migration
  def change
    change_column :users, :category, :integer, :default => 1
  end
end
