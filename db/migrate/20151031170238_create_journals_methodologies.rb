class CreateJournalsMethodologies < ActiveRecord::Migration
  def change
    create_table :journals_methodologies do |t|
      t.integer :journal_id
      t.integer :methodology_id
    end
  end
end
