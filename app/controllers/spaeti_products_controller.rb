class SpaetiProductsController < ApplicationController
  def index
    @spaeti_products = SpaetiProduct.all
  end

  def show
    @spaeti_product = SpaetiProduct.find(params[:id])
  end

  def new
    @spaeti_product = SpaetiProduct.new
  end

  def create
    @spaeti_product = SpaetiProduct.new(params[:spaeti_product])
    if @spaeti_product.save
      redirect_to @spaeti_product, :notice => "Successfully created spaeti product."
    else
      render :action => 'new'
    end
  end

  def edit
    @spaeti_product = SpaetiProduct.find(params[:id])
  end

  def update
    @spaeti_product = SpaetiProduct.find(params[:id])
    if @spaeti_product.update_attributes(params[:spaeti_product])
      redirect_to @spaeti_product, :notice  => "Successfully updated spaeti product."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @spaeti_product = SpaetiProduct.find(params[:id])
    @spaeti_product.destroy
    redirect_to spaeti_products_url, :notice => "Successfully destroyed spaeti product."
  end
end
