class Spaeti < ActiveRecord::Base
  attr_accessible :name, :street, :number, :postal, :city, :district, :open, :latitude, :longitude
  validates_presence_of :name, :street, :number, :postal, :city
  has_many :spaeti_features
  has_many :features, :through => :spaeti_features
  has_many :spaeti_products
  has_many :products, :through => :spaeti_products
  acts_as_gmappable

  def gmaps4rails_address
    #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.street}, #{self.number}, #{self.postal}, #{self.city}"
  end

  def self.search(query)
    if !query.to_s.strip.empty?
      tokens = query.split.collect { |c| "%#{c.downcase}%" }
      find_by_sql(["select s.* from spaetis s where #{ (["(lower(s.name) like ? or lower(s.district) like ? or lower(s.postal) like ? or lower(s.street) like ? or lower(s.city) like ?)"] * tokens.size).join(" and ") } order by s.name", *(tokens * 5).sort])
    else
      find(:all)
    end
  end
end
