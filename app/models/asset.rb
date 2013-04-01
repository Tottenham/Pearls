class Asset < ActiveRecord::Base
  attr_accessible :girl_id, :classification, :image

  belongs_to :girl

	has_attached_file :image,
	  :storage => :s3,
	  :s3_credentials => "#{Rails.root}/config/s3.yml",
	  :bucket => "pearlsgirlsimages";

  validates_presence_of :image_file_name
end
