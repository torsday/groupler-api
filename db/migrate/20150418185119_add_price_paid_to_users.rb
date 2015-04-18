class AddPricePaidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :price_paid, :integer, :default => 0
  end
end
