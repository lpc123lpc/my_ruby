class ChangeTermTypeForTextbook < ActiveRecord::Migration[6.0]
  def change
    change_table :textbooks do |t|
      t.change :term, :string
    end
  end
end
