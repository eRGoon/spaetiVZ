class SpaetiFeaturesController < ApplicationController
  #def index
    #@spaeti_features = SpaetiFeature.all
  #end

  #def show
    #@spaeti_feature = SpaetiFeature.find(params[:id])
  #end

  #def new
    #@spaeti_feature = SpaetiFeature.new
  #end

  def create
    _sID = params[:spaeti]
    _fID = params[:feature]
    @spaeti_feature = SpaetiFeature.new({:spaeti_id => _sID, :feature_id => _fID})
    @spaeti_feature.save
  end

  #def edit
    #@spaeti_feature = SpaetiFeature.find(params[:id])
  #end

  #def update
    #@spaeti_feature = SpaetiFeature.find(params[:id])
    #if @spaeti_feature.update_attributes(params[:spaeti_feature])
      #redirect_to @spaeti_feature, :notice  => "Successfully updated spaeti feature."
    #else
      #render :action => 'edit'
    #end
  #end

  def destroy
    @spaeti_feature = SpaetiFeature.find(params[:id])
    @spaeti_feature.destroy
  end
end
