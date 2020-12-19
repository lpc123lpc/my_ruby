class RenameTypeForJournal < ActiveRecord::Migration[6.0]
  def change
    rename_column :journals, :type, :journaltype
  end
end
