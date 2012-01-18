class AddColumnsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :longitude, :float
    add_column :listings, :latitude, :float
  end
end
