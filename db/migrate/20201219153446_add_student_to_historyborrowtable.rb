class AddStudentToHistoryborrowtable < ActiveRecord::Migration[6.0]
  def change
    add_reference :historyborrowtables, :student, null: false, foreign_key: true
  end
end
