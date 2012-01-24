class SpaetisController < ApplicationController
  before_filter :load

  def load
    @spaetis = Spaeti.all
  end

  def index
    @spaetis = Spaeti.search(params[:search]) if params[:search]
  end

  def new
    @spaeti = Spaeti.new
    @features = Feature.all
    @associated_features = @spaeti.features
    @products = Product.all
    @associated_products = @spaeti.products
  end

  def create
    @spaeti = Spaeti.new(params[:spaeti])
    if @spaeti.save
      @spaetis = Spaeti.all
      @rate = Rate.new({:sID => @spaeti.id, :points => 0, :ratings => 0})
      @rate.save
      @spaeti_features = @spaeti.features
      flash[:notice] = "Spaetkauf erstellt."
    end
  end

  def edit
    @spaeti = Spaeti.find(params[:id])
    @rate = Rate.find(:all, :conditions => {:sID => @spaeti.id})[0]
    @features = Feature.all
    @associated_features = @spaeti.features
    @products = Product.all
    @associated_products = @spaeti.products
  end

  def show
    @spaeti = Spaeti.find(params[:id])
    @coords = Spaeti.find(params[:id]).to_gmaps4rails
    @comments = Comment.find(:all, :conditions => {:sID => @spaeti.id})
    @comment = Comment.new
    @rate = Rate.find(:all, :conditions => {:sID => @spaeti.id})[0]
    @spaeti_features = @spaeti.features
    @spaeti_products = @spaeti.products
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


