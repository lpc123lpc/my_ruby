class ChangeLevelTypeForDamagebooks < ActiveRecord::Migration[6.0]
  def change
    change_table :damagebooks do |t|
      t.change :level, :integer
    end
  end
end
