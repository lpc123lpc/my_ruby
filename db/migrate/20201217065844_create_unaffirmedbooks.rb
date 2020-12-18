class CreateUnaffirmedbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :unaffirmedbooks do |t|
      t.string :bookid
      t.string :booktitle
      t.string :expected_return
      t.string :returndate
      t.string :overdue

      t.timestamps
    end
  end
end
