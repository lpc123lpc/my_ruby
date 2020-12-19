class AddStudentToBorrowtable < ActiveRecord::Migration[6.0]
  def change
    add_reference :borrowtables, :student, null: false, foreign_key: true
  end
end
