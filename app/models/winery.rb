class Winery < ActiveRecord::Base
  
  has_many :wineryHistories
  
  geocoded_by :address
  after_validation :geocode#, :if => :street_address_1_changed?
  
  private
  def address
    address ="#{street_address_1} #{street_address_2} #{city} #{state} #{zip}"
  end

end
