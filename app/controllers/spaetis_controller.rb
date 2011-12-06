class SpaetisController < ApplicationController
  before_filter :load

  def load
    @spaetis = Spaeti.all
  end

  def index
  end

  def new
    @spaeti = Spaeti.new
  end

  def create
    @spaeti = Spaeti.new(params[:spaeti])
    if @spaeti.save
      flash[:notice] = "Spaetkauf erstellt."
      @spaetis = Spaeti.all
    end
  end

  def edit
    @spaeti = Spaeti.find(params[:id])
  end

  def show
    @spaeti = Spaeti.find(params[:id])
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


