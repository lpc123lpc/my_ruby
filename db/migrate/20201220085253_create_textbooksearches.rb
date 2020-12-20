class CreateTextbooksearches < ActiveRecord::Migration[6.0]
  def change
    create_table :textbooksearches do |t|
      t.string :bookname
      t.string :department
      t.string :term

      t.timestamps
    end
  end
end
