class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :status
      t.string :phone
      t.string :email
      t.string :looking_to
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
