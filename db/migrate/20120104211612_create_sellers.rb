class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :property_type
      t.string :min_price
      t.string :max_price
      t.integer :bedrooms
      t.string :bathrooms
      t.string :city
      t.string :timeframe
      t.string :more_info
      t.integer :street_number
      t.string :street_name
      t.string :postal_code
      t.integer :times_forwarded

      t.timestamps
    end
  end
end
