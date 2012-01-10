class SpaetiFeaturesController < ApplicationController
  def index
    @spaeti_features = SpaetiFeature.all
  end

  def show
    @spaeti_feature = SpaetiFeature.find(params[:id])
  end

  def new
    @spaeti_feature = SpaetiFeature.new
  end

  def create
    @spaeti_feature = SpaetiFeature.new(params[:spaeti_feature])
    if @spaeti_feature.save
      redirect_to @spaeti_feature, :notice => "Successfully created spaeti feature."
    else
      render :action => 'new'
    end
  end

  def edit
    @spaeti_feature = SpaetiFeature.find(params[:id])
  end

  def update
    @spaeti_feature = SpaetiFeature.find(params[:id])
    if @spaeti_feature.update_attributes(params[:spaeti_feature])
      redirect_to @spaeti_feature, :notice  => "Successfully updated spaeti feature."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @spaeti_feature = SpaetiFeature.find(params[:id])
    @spaeti_feature.destroy
    redirect_to spaeti_features_url, :notice => "Successfully destroyed spaeti feature."
  end
end
