class AddStateToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :state, :string
  end
end
