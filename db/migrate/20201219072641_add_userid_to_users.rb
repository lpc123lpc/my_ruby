class AddUseridToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :userid, :string
    add_index :users, :userid, unique: true
  end
end
