class Asset < ActiveRecord::Base
  attr_accessible :girl_id, :classification, :image

  belongs_to  :girl

  has_attached_file  :image,
    :url => "/assets/images/:id/:style/:basename.:extension",
    :path => ":rails_root/public/system/:id/:style/:basename.:extension"

  validates_presence_of :image_file_name
end
