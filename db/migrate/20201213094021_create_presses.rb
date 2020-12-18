class CreatePresses < ActiveRecord::Migration[6.0]
  def change
    create_table :presses do |t|
      t.string :pressid,index: { unique: true }
      t.string :pressname
      t.date :pressdate

      t.timestamps
    end
  end
end
