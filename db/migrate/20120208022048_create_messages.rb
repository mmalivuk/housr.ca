class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :your_name
      t.string :your_email
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
