class CategoriesController < ApplicationController

  before_filter :is_logged_in?

  include ApplicationHelper

  def index
  	@categories = Category.find(:all, :order => "title ASC")
  end

  def edit
  	@category = Category.find(params[:id])
  end

  def new
  	@category = Category.new
  end

  def create
   @category = Category.new(params[:category])

   respond_to do |format|
     if @category.save
       format.html { redirect_to("/categories", :notice => 'Category was successfully created.') }
       format.xml  { render :xml => @category, :status => :created, :location => @category }
     else
       format.html { render :action => "new" }
       format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
     end
   end
  end
  
end
