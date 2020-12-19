class AddTypeToJournals < ActiveRecord::Migration[6.0]
  def change
    add_column :journals, :type, :integer
  end
end
