class CreateManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :managers do |t|
      t.string :managerid,index: { unique: true }
      t.string :name
      t.integer :gender
      t.date :intime
      t.string :phone
      t.string :weixin
      t.string :email

      t.timestamps
    end
  end
end
