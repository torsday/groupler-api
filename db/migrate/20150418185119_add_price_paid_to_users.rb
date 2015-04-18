class AddPricePaidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :price_paid, :integer
  end
end
