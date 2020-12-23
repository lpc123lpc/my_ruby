class CreateLostbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :lostbooks do |t|
      t.string :bookid
      t.string :booktitle
      t.string :author
      t.string :press
      t.string :price

      t.timestamps
    end
  end
end
