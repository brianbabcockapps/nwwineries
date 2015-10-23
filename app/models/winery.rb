class Winery < ActiveRecord::Base
  
  geocoded_by :address
  after_validation :geocode#, :if => :address_changed?
  
  private
  def address
    address ="#{street_address_1} #{street_address_2} #{city} #{state}" 
  end

end
