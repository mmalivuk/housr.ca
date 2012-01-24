class Buyer < ActiveRecord::Base
  validates :min_bedrooms, :numericality => { :greater_than_or_equal_to => 0 }
  validates :min_bathrooms, :numericality => { :greater_than_or_equal_to => 0 }
  validates :street_number, :numericality => { :greater_than_or_equal_to => 0 }
end
