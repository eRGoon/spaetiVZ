class RatesController < ApplicationController
  def index
    @rates = Rate.all
  end

  def show
    @rate = Rate.find(params[:id])
  end

  def new
    @rate = Rate.new
  end

  def create
    @rate = Rate.new(params[:rate])
    if @rate.save
      redirect_to @rate, :notice => "Successfully created rate."
    else
      render :action => 'new'
    end
  end

  def edit
    @rate = Rate.find(params[:id])
  end

  def update
    @rate = Rate.find(params[:id])
    if @rate.update_attributes(params[:rate])
      redirect_to @rate, :notice  => "Successfully updated rate."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @rate = Rate.find(params[:id])
    @rate.destroy
    redirect_to rates_url, :notice => "Successfully destroyed rate."
  end
end
