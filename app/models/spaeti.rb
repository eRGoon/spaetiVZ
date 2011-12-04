class Spaeti < ActiveRecord::Base
  attr_accessible :name, :street, :number, :postal, :city, :district, :open
  validates_presence_of :name, :street, :number, :postal, :city, :district, :open
end
