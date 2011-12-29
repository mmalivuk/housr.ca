class Listing < ActiveRecord::Base
  belongs_to :user
  
  mount_uploader :img, ImgUploader
end
