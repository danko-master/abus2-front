class Car < ActiveRecord::Base


  has_many :images
  has_many :cars_domains
  has_many :domains, :through => :cars_domains
  
  attr_accessible :name, :short, :long, :is_show, :title, :metadescription, :metakeywords,
  :alias, :price_hour, :price_MKAD, :min_zakaz, :transfer_sheremetevo,
  :transfer_vnukovo, :transfer_domodedovo, :transfer_ostafevo, :transfer_bikovo, :transfer_airport_airport, 
  :transfer_airport_station, :transfer_station_airport, :weeding_price_hour, :weeding_price_MKAD, 
  :weeding_min_zakaz, :weeding_friday, :weeding_saturday, :weeding_decor,
  :holiday, :holiday_min_zakaz, :holiday_weeding_min_zakaz
  
  def self.check_price(array_check) 
    return true if array_check.any?{|elem| (elem != nil && elem.to_s.length > 0)}
    
    return false
  end

end