class ChangeDepartmentTypeForTextbookAgain < ActiveRecord::Migration[6.0]
  def change
    change_table :textbooks do |t|
      t.change :department, :integer
    end
  end
end
