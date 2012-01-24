class SpaetiFeaturesController < ApplicationController
  def create
    _sID = params[:spaeti]
    _fID = params[:feature]
    @spaeti_feature = SpaetiFeature.new({:spaeti_id => _sID, :feature_id => _fID})
    @spaeti_feature.save
  end

  def destroy
    @spaeti_feature = SpaetiFeature.find(params[:id])
    @spaeti_feature.destroy
  end
end
