class Spaeti < ActiveRecord::Base
  attr_accessible :name, :street, :number, :postal, :city, :district, :open, :latitude, :longitude
  validates_presence_of :name, :street, :number, :postal, :city
  has_many :spaeti_features
  has_many :features, :through => :spaeti_features
  acts_as_gmappable

  def gmaps4rails_address
    #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.street}, #{self.number}, #{self.postal}, #{self.city}"
  end

  def self.search(search)
    if search
      search_condition = "%" + search + "%"
      find(:all, :conditions => ['name LIKE ? OR district LIKE ? OR postal LIKE ? OR street LIKE ?',
                                 search_condition, search_condition, search_condition, search_condition])
    else
      find(:all)
    end
  end
end
