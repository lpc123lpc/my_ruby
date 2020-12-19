class ChangeDateTypeForJournal < ActiveRecord::Migration[6.0]
  def change
    change_table :journals do |t|
      t.change :date, :date
    end
  end
end
