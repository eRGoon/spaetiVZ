class FeaturesController < ApplicationController
  def index
    @features = Features.all
  end

  def show
    @features = Features.find(params[:id])
  end

  def new
    @features = Features.new
  end

  def create
    @features = Features.new(params[:features])
    if @features.save
      redirect_to @features, :notice => "Successfully created features."
    else
      render :action => 'new'
    end
  end

  def edit
    @features = Features.find(params[:id])
  end

  def update
    @features = Features.find(params[:id])
    if @features.update_attributes(params[:features])
      redirect_to @features, :notice  => "Successfully updated features."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @features = Features.find(params[:id])
    @features.destroy
    redirect_to features_url, :notice => "Successfully destroyed features."
  end
end
