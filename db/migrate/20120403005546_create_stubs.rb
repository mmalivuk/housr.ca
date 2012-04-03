class CreateStubs < ActiveRecord::Migration
  def change
    create_table :stubs do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :city
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
