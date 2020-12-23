 class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books  do |t|
      t.string :bookid,index: { unique: true }
      t.string :title
      t.string :author
      t.string :press
      t.float :price
      t.date :intime
      t.integer :category

      t.timestamps
    end
  end
end
