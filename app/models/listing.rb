class Listing < ActiveRecord::Base
  belongs_to :user
  
  validates :title, :length => { :maximum => 70 }
  validates :description, :length => { :maximum => 2000 }
  
  mount_uploader :img, ImgUploader
end
