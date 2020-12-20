class ChangeDepartmentTypeForTextbook < ActiveRecord::Migration[6.0]
  def change
    change_table :textbooks do |t|
      t.change :department, :string
    end
  end
end
