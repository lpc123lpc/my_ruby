class CreateDamagebooks < ActiveRecord::Migration[6.0]
  def change
    create_table :damagebooks do |t|
      t.string :bookid,index: { unique: true }
      t.string :bookname
      t.string :level
      t.date :date

      t.timestamps
    end
  end
end
