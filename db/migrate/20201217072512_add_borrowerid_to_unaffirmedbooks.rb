class AddBorroweridToUnaffirmedbooks < ActiveRecord::Migration[6.0]
  def change
    add_column :unaffirmedbooks, :borrowerid, :string
  end
end
