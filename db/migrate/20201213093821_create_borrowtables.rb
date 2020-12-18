class CreateBorrowtables < ActiveRecord::Migration[6.0]
  def change
    create_table :borrowtables do |t|
      t.string :bookid,index: { unique: true }
      t.string :bookname
      t.string :borrowerid
      t.date :borrowdate
      t.date :returndate

      t.timestamps
    end
  end
end
