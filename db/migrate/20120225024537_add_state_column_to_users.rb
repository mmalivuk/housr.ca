class AddStateColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :state, :string
  end
end
