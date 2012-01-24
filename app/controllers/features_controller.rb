class FeaturesController < ApplicationController
  def create
    _name = params[:name]
    @feature = Feature.new({:name => _name})
    @feature.save
    @features = Feature.all
    _sID = params[:spaeti]
    @spaeti = Spaeti.find(_sID)
    @spaeti_feature = SpaetiFeature.new({:spaeti_id => @spaeti.id, :feature_id => @feature.id})
    @spaeti_feature.save
  end

  def destroy
    @feature = Feature.find(params[:id])
    @feature.destroy
  end
end
