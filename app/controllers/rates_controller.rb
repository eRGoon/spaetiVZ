class RatesController < ApplicationController
  def update
    @rate = Rate.find(params[:id])
    old_points = @rate.points
    new_points = (params[:rate][:points])
    new_points = new_points.to_i + old_points
    old_ratings = @rate.ratings
    new_ratings = old_ratings + 1
    @rate.update_attributes({:points => new_points, :ratings => new_ratings})
  end

  def destroy
    @rate = Rate.find(params[:id])
    @rate.destroy
  end
end
