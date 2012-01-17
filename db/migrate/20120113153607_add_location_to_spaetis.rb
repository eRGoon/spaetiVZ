class AddLocationToSpaetis < ActiveRecord::Migration
  def change
    add_column :spaetis, :latitude, :float
    add_column :spaetis, :longitude, :float
    add_column :spaetis, :gmaps, :boolean
  end
end
