class CreateProgressionCategories < ActiveRecord::Migration
  def change
    create_table :progression_categories do |t|
      t.string :title

      t.timestamps null: false
    end
    
    change_table :projects do |t|
      t.belongs_to :progression_category
    end
  end
end
