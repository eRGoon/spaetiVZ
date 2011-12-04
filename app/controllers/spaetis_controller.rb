class SpaetisController < ApplicationController
  before_filter :load

  def load
    @spaetis = Spaeti.all
    @spaeti = Spaeti.new
  end

  def index
  end

  def create
    @spaeti = Spaeti.new(params[:spaeti])
    if @spaeti.save
      flash[:notice] = "Successfully created spaeti."
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
      flash[:notice] = "Successfully updated spaeti."
      @spaetis = Spaeti.all
    end
  end

  def destroy
    @spaeti = Spaeti.find(params[:id])
    @spaeti.destroy
    flash[:notice] = "Successfully destroyed spaeti."
    @spaetis = Spaeti.all
  end
end


