class SpaetiProductsController < ApplicationController
  def create
    _sID = params[:spaeti]
    _pID = params[:product]
    @spaeti_product = SpaetiProduct.new({:spaeti_id => _sID, :product_id => _pID})
    @spaeti_product.save
  end

  def destroy
    @spaeti_product = SpaetiProduct.find(params[:id])
    @spaeti_product.destroy
  end
end
