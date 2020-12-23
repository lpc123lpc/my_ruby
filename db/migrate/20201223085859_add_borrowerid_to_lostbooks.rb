class AddBorroweridToLostbooks < ActiveRecord::Migration[6.0]
  def change
    add_column :lostbooks, :borrowerid,:string
  end
end
