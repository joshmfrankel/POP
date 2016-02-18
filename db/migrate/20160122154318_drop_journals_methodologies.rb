class DropJournalsMethodologies < ActiveRecord::Migration
  def change
    drop_table :journals_methodologies
  end
end
