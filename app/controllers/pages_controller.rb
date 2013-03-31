class PagesController < ApplicationController

  def index
  	@promo_girls = Girl.where(:featured => 1).limit(3)
  end

  def prices
  end

  def how_to_book
  end

  def promises
  end

  def faq
  end

  def work_for_us
  end

  def contact
  end

end
