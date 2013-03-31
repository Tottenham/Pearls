class GirlsController < ApplicationController

  before_filter :is_logged_in?, :except => [:index, :show, :tonights_girls]

  include ApplicationHelper

  def index
  	@categories = Category.find(:all, :order => "title ASC")

  	if params[:category]
  		category = Category.find_by_title(params[:category])
  		@girls = Girl.find(:all, :conditions => {:category_id => category.id }, :order => "created_at DESC")
  	else
  		@girls = Girl.find(:all, :order => "created_at DESC")
  	end
  end

  def admin_index
  	@girls = Girl.find(:all, :order => "created_at DESC")
  end

  def edit
  	@girl = Girl.find(params[:id])
  	5.times { @girl.assets.build }
  	@categories = Category.find(:all, :order => "title ASC")
  end

  def show
  	@girl = Girl.find_by_name(params[:id])
    @images = Asset.find(:all, :conditions => ["girl_id = ? AND classification is null", @girl.id])
  end

  def new
  	@girl = Girl.new
  	5.times { @girl.assets.build }
  	@categories = Category.find(:all, :order => "title ASC")
  end

  def create
   @girl = Girl.new(params[:girl])

   respond_to do |format|
     if @girl.save
       format.html { redirect_to(@girl, :notice => 'Girl was successfully created.') }
       format.xml  { render :xml => @girl, :status => :created, :location => @post }
     else
       format.html { render :action => "new" }
       format.xml  { render :xml => @girl.errors, :status => :unprocessable_entity }
     end
   end
  end

  def update
	  @girl = Girl.find(params[:id])

    if params[:girl]["assets_attributes"]["0"]["image"].blank?
      params[:girl].tap{ |h| h.delete("assets_attributes") }
    end
	  
    if @girl.update_attributes(params[:girl])
	    redirect_to("/girls", :notice => 'Girl was successfully updated.')
	  else
	    redirect_to :back
	  end
  end

  def tonights_girls
    if params[:category]
      category = Category.find_by_title(params[:category])
      @girls = Girl.find(:all, :conditions => {:tonight => 1, :category_id => category.id }, :order => "created_at DESC")
    else
     @girls = Girl.where(:tonight => 1)
    end
    @girls = Girl.where(:tonight => 1)
    @categories = Category.for(@girls)
  end

  def destroy
    @girl = Girl.find(params[:id])
    @girl.destroy
    redirect_to('/girls/admin_index')
  end
end
