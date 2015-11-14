class AddApprovedAndUserToJournals < ActiveRecord::Migration
  def change
    add_column :journals, :approved, :boolean
    add_reference :journals, :user, index: true, foreign_key: true
  end
end
