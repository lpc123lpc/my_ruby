class CreateManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :managerid
      t.integer :gender
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
