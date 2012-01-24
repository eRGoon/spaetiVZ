class Feature < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name
  has_many :spaeti_features
  has_many :spaetis, :through => :spaeti_features
end
