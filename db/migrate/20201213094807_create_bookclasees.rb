class CreateBookclasees < ActiveRecord::Migration[6.0]
  def change
    create_table :bookclasees do |t|
      t.string :classid,index: { unique: true }
      t.string :classname

      t.timestamps
    end
  end
end
