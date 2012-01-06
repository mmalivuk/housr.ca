class Listing < ActiveRecord::Base
  belongs_to :user
  
  validates :title, :length => { :maximum => 70 }
  
  mount_uploader :img, ImgUploader
end
