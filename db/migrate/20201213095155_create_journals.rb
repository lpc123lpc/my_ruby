class CreateJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :journals do |t|
      t.string :journalid,index: { unique: true }
      t.string :journalname

      t.timestamps
    end
  end
end
