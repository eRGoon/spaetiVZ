class Rate < ActiveRecord::Base
  attr_accessible :sID, :points, :ratings
  validates_presence_of :sID, :points
end
