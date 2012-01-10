class SpaetisController < ApplicationController
  before_filter :load

  def load
    @spaetis = Spaeti.all
    @spaeti = Spaeti.new
    @features = Feature.find(:all, :select => "DISTINCT name")
    @feature = Feature.new({:sID => @spaeti.id})
    @products = Product.find(:all, :select => "DISTINCT name")
    @product = Product.new({:sID => @spaeti.id})
  end

  def index
    @spaetis = Spaeti.search(params[:search]) if params[:search]
  end

  #def new
    #@spaeti = Spaeti.new
  #end

  def create
    @spaeti = Spaeti.new(params[:spaeti])
    if @spaeti.save
      @spaetis = Spaeti.all
      @rate = Rate.new({:sID => @spaeti.id, :points => 0, :ratings => 0})
      @rate.save
      @spaeti_features = @spaeti.features
      # TODO check params for features and products, delete or add them
      flash[:notice] = "Spaetkauf erstellt."
    end
  end

  def edit
    @spaeti = Spaeti.find(params[:id])
    @rate = Rate.find(:all, :conditions => {:sID => @spaeti.id})[0]
    @features = Feature.all
    @associated_features = @spaeti.features
    @feature = Feature.new({:sID => @spaeti.id})
    @products = Product.find(:all, :select => "DISTINCT name")
    @product = Product.new({:sID => @spaeti.id})
  end

  def show
    @spaeti = Spaeti.find(params[:id])
    @comments = Comment.find(:all, :conditions => {:sID => @spaeti.id})
    @comment = Comment.new
    @rate = Rate.find(:all, :conditions => {:sID => @spaeti.id})[0]
    @spaeti_features = @spaeti.features
    @products = Product.find(:all, :conditions => {:sID => @spaeti.id})
  end

  def update
    @spaeti = Spaeti.find(params[:id])
    if @spaeti.update_attributes(params[:spaeti])
      flash[:notice] = "Spaetkauf aktualisiert."
      @spaetis = Spaeti.all
    end
  end

  def destroy
    @spaeti = Spaeti.find(params[:id])
    @spaeti.destroy
    flash[:notice] = "Spaetkauf entfernt."
    @spaetis = Spaeti.all
    end
end


