class SpaetisController < ApplicationController
  def index
    @spaetis = Spaeti.all
  end

  def show
    @spaeti = Spaeti.find(params[:id])
  end

  def new
    @spaeti = Spaeti.new
  end

  def create
    @spaeti = Spaeti.new(params[:spaeti])
    if @spaeti.save
      redirect_to @spaeti, :notice => "Successfully created spaeti."
    else
      render :action => 'new'
    end
  end

  def edit
    @spaeti = Spaeti.find(params[:id])
  end

  def update
    @spaeti = Spaeti.find(params[:id])
    if @spaeti.update_attributes(params[:spaeti])
      redirect_to @spaeti, :notice  => "Successfully updated spaeti."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @spaeti = Spaeti.find(params[:id])
    @spaeti.destroy
    redirect_to spaetis_url, :notice => "Successfully destroyed spaeti."
  end
end
