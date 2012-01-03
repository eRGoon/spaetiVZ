class SpaetisController < ApplicationController
  before_filter :load

  def load
    @spaetis = Spaeti.all
    @spaeti = Spaeti.new
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
      flash[:notice] = "Spaetkauf erstellt."
      @spaetis = Spaeti.all
      @rate = Rate.new({:sID => @spaeti.id, :points => 0, :ratings => 0})
      @rate.save
    end
  end

  def edit
    @spaeti = Spaeti.find(params[:id])
  end

  def show
    @spaeti = Spaeti.find(params[:id])
    @comments = Comment.find(:all, :conditions => {:sID => @spaeti.id})
    @rate = Rate.find(:all, :conditions => {:sID => @spaeti.id})[0]
    @comment = Comment.new
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


