class Feature < ActiveRecord::Base
  attr_accessible :sID, :name
  validates_presence_of :sID, :name
end
