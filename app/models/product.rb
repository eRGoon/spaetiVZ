class Product < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name
  has_many :spaeti_products
  has_many :spaetis, :through => :spaeti_products
end
