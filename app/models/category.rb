class Category < ActiveRecord::Base
  attr_accessible :title

  has_many :girls

  def self.for(girls)
  	categories = []
  	girls.each do |girl|
  		categories << girl.category_id
  	end
  	return Category.find(categories.uniq)
  end

end
