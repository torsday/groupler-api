class AddRelationshipsToBid < ActiveRecord::Migration
  def change
    change_table :bids do |t|
      t.belongs_to :project
      t.belongs_to :company
    end
  end
end
