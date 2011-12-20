class Spaeti < ActiveRecord::Base
  attr_accessible :name, :street, :number, :postal, :city, :district, :open
  validates_presence_of :name, :street, :number, :postal, :city

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
