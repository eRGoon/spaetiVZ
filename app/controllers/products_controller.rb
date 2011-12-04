class ProductsController < ApplicationController
  def index
    @products = Products.all
  end

  def show
    @products = Products.find(params[:id])
  end

  def new
    @products = Products.new
  end

  def create
    @products = Products.new(params[:products])
    if @products.save
      redirect_to @products, :notice => "Successfully created products."
    else
      render :action => 'new'
    end
  end

  def edit
    @products = Products.find(params[:id])
  end

  def update
    @products = Products.find(params[:id])
    if @products.update_attributes(params[:products])
      redirect_to @products, :notice  => "Successfully updated products."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @products = Products.find(params[:id])
    @products.destroy
    redirect_to products_url, :notice => "Successfully destroyed products."
  end
end
