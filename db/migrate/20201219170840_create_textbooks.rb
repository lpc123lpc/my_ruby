class CreateTextbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :textbooks do |t|
      t.integer :department
      t.integer :term
      t.string :bookname
      t.string :author
      t.string :press

      t.timestamps
    end
  end
end
