class ChangeDepartmentTypeForStudent < ActiveRecord::Migration[6.0]
  def change
    change_table :students do |t|
      t.change :department, :integer
    end
  end
end
