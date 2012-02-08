class CreateRenters < ActiveRecord::Migration
  def change
    create_table :renters do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :property_type
      t.string :min_price
      t.string :max_price
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :street_number
      t.string :street_name
      t.string :postal_code
      t.string :city
      t.string :timeframe
      t.text :more_info
      t.integer :times_forwarded

      t.timestamps
    end
  end
end
