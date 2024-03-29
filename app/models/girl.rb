class Girl < ActiveRecord::Base
  attr_accessible :age, :bust_size, :category_id, :dress_size, :name, :nationality, :orientation, :image, :assets_attributes, :featured, :tonight

  has_many :assets
  belongs_to :category

  accepts_nested_attributes_for  :assets,  :allow_destroy  => true

end
