class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :street_number
      t.string :street_name
      t.string :city
      t.string :building_type
      t.string :mls_number
      t.string :bedrooms
      t.string :bathrooms
      t.string :sq_ft
      t.string :asking_price
      t.string :price_sold
      t.string :garage_space
      t.string :storeys
      t.text :title
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
