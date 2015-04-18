class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :sun_number
      t.integer :mo_elec_bill
      t.integer :zillow_estimate
      t.string  :address
      t.string  :lat
      t.string  :long

      t.timestamps null: false
    end
  end
end
