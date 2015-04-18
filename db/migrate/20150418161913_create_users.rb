class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :address
      t.float :lat, :lng
      t.integer :category
    end
  end
end
