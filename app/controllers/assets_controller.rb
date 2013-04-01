class AssetsController < ApplicationController

  before_filter :is_logged_in?

  include ApplicationHelper

  def index
  	@images = Asset.all.select{|a| !a.girl.blank? }.sort_by {|a| a.girl.name}
  end

  def new
  	@asset = Asset.new
  	@girls = Girl.find(:all, :order => "name ASC")
  end

  def show
  end

  def create
   @asset = Asset.new(params[:asset])

   respond_to do |format|
     if @asset.save
       format.html { redirect_to("/assets", :notice => 'Asset was successfully created.') }
       format.xml  { render :xml => @asset, :status => :created, :location => @asset }
     else
       format.html { render :action => "new" }
       format.xml  { render :xml => @asset.errors, :status => :unprocessable_entity }
     end
   end
  end

  def edit
    @asset = Asset.find(params[:id])
    @girls = Girl.find(:all, :order => "name ASC")
  end

  def update
    @asset = Asset.find(params[:id])

    if @asset.update_attributes(params[:asset])
      redirect_to("/assets", :notice => 'Asset was successfully updated.')
    else
      render :action => "edit"
    end
  end

end
