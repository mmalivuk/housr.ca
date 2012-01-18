class Listing < ActiveRecord::Base
  belongs_to :user
  acts_as_gmappable
  
  def gmaps4rails_address
    "76A Gardiner Street, Kingston, ON"
  end
  
  validates :title, :length => { :maximum => 70 }
  validates :description, :length => { :maximum => 2000 }
  mount_uploader :img, ImgUploader
  
  
end
