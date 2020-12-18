class CreateHistoryborrowtables < ActiveRecord::Migration[6.0]
  def change
    create_table :historyborrowtables do |t|
      t.string :bookid
      t.string :bookname
      t.string :borrowerid
      t.string :borrowdate
      t.string :returndate

      t.timestamps
    end
  end
end
