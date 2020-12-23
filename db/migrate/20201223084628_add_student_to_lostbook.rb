class AddStudentToLostbook < ActiveRecord::Migration[6.0]
  def change
    add_reference :lostbooks, :student, null: false, foreign_key: true
  end
end
