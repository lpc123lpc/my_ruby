class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :studentid,index: { unique: true }
      t.string :name
      t.integer :gender
      t.string :department
      t.date :registration
      t.date :validity
      t.integer :credit ,inclusion: 0..100

      t.timestamps
    end
  end
end
