class Listing < ActiveRecord::Base
  belongs_to :user
  acts_as_gmappable
  
  def gmaps4rails_address
    "#{self.street_number} #{self.street_name}, #{self.city}"
  end
  
  validates :title, :length => { :maximum => 70 }
  validates :description, :length => { :maximum => 2000 }
  mount_uploader :img, ImgUploader
  
  
end
