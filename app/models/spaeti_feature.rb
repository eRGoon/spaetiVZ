class SpaetiFeature < ActiveRecord::Base
  attr_accessible :spaeti_id, :feature_id
  validates_presence_of :spaeti_id, :feature_id
  belongs_to :spaeti
  belongs_to :feature
end
