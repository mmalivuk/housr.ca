class Listing < ActiveRecord::Base
  belongs_to :user
  acts_as_gmappable
  
  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.street_number} #{self.street_name}, #{self.city}, ON" 
  end
  
  def gmaps4rails_infowindow
    "<img src=\"#{self.img}\" width=75px> <br class=\"clearfloat\"> #{self.street_number} #{self.street_name}, #{self.city}, ON"
  end
  
  validates :title, :length => { :maximum => 70 }
  validates :description, :length => { :maximum => 2000 }
  mount_uploader :img, ImgUploader
  
  
end
