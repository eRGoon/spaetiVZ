class Spaeti < ActiveRecord::Base
  attr_accessible :name, :street, :number, :postal, :city, :district, :open
end
