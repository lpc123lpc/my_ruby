class AddDateToJournals < ActiveRecord::Migration[6.0]
  def change
    add_column :journals, :date, :string
  end
end
