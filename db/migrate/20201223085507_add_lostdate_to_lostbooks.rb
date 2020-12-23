class AddLostdateToLostbooks < ActiveRecord::Migration[6.0]
  def change
    add_column :lostbooks, :lostdate,:string
  end
end
