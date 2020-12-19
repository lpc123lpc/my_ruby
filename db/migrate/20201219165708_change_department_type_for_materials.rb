class ChangeDepartmentTypeForMaterials < ActiveRecord::Migration[6.0]
  def change
    change_table :materials do |t|
      t.change :departmentid, :integer, unique:false
    end
  end
end
