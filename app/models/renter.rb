class Renter < ActiveRecord::Base
  validates :bedrooms, :numericality => { :greater_than_or_equal_to => 0 }
  validates :bathrooms, :numericality => { :greater_than_or_equal_to => 0 }
end