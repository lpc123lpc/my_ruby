class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string :departmentid,index: { unique: true }
      t.string :term
      t.string :bookname
      t.string :authorname

      t.timestamps
    end
  end
end
