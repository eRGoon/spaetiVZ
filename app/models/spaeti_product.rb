class SpaetiProduct < ActiveRecord::Base
  attr_accessible :spaeti_id, :product_id
  validates_presence_of :spaeti_id, :product_id
  belongs_to :spaeti
  belongs_to :product
end
