class Feature < ActiveRecord::Base
  attr_accessible :sID, :name
  validates_presence_of :sID, :name
  has_many :spaeti_features
  has_many :spaetis, :through => :spaeti_features
end
