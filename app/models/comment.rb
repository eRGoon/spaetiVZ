class Comment < ActiveRecord::Base
  attr_accessible :sID, :comment
  validates_presence_of :sID, :comment
end
