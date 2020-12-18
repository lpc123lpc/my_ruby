class CreateBookcases < ActiveRecord::Migration[6.0]
  def change
    create_table :bookcases do |t|
      t.string :bookcaseid,index: { unique: true }
      t.integer :floor
      t.string :partition
      t.string :number
      t.integer :line
      t.integer :column

      t.timestamps
    end
  end
end
