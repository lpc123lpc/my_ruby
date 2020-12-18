class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :authorid,index: { unique: true }
      t.string :name
      t.string :nationality
      t.date :birthdate
      t.date :death

      t.timestamps
    end
  end
end
