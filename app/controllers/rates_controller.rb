class RatesController < ApplicationController
=begin
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
=end

  def update
    @rate = Rate.find(params[:id])
    old_points = @rate.points
    new_points = (params[:rate][:points])
    new_points = new_points.to_i + old_points
    old_ratings = @rate.ratings
    new_ratings = old_ratings + 1
    @rate.update_attributes({:points => new_points, :ratings => new_ratings})
  end

=begin
def destroy
    @rate = Rate.find(params[:id])
    @rate.destroy
    redirect_to rates_url, :notice => "Successfully destroyed rate."
  end
=end
end
