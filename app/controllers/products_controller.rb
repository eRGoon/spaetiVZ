class ProductsController < ApplicationController
  def create
    _name = params[:name]
    @product = Product.new({:name => _name})
    @product.save
    @products = Product.all
    _sID = params[:spaeti]
    @spaeti = Spaeti.find(_sID)
    @spaeti_product = SpaetiProduct.new({:spaeti_id => @spaeti.id, :product_id => @product.id})
    @spaeti_product.save
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end
end
