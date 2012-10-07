class CarsController < ApplicationController
  def index
    @domain = Domain.find(session[:current_domain_id])
    @cars_domain = @domain.cars.order("order_id")
    @menu = Page.where(:domain => session[:current_domain_id])
    @main = Main.find(session[:current_domain_id]) 
    @page = Page.new(:name => t('views.car_page'))
  end
  def show
    @menu = Page.where(:domain => session[:current_domain_id])
    @main = Main.find(session[:current_domain_id]) 
    @car = Car.find(:first, :conditions => ["alias = ?", params[:alias]])
    
    @page = Page.new(:name => @car.name)
    
    @image = @car.images.order("order_id").first
    @images = @car.images.where("order_id > ?", 1)
    
    @car.title = @car.name if (@car.title == "" || @car.title == nil)
    @car.metadescription = @main.metadescription if (@car.metadescription == "" || @car.metadescription == nil)
    @car.metakeywords = @main.metakeywords if (@car.metakeywords == "" || @car.metakeywords == nil)
    

    array_price_hour = [@car.price_hour, @car.price_MKAD]    
    array_transfer = [@car.transfer_sheremetevo, 
       @car.transfer_vnukovo, @car.transfer_domodedovo, @car.transfer_ostafevo, @car.transfer_bikovo, 
       @car.transfer_airport_airport, @car.transfer_airport_station, @car.transfer_station_airport]
    array_weeding_rent = [@car.weeding_price_hour, @car.weeding_price_MKAD, @car.weeding_min_zakaz, 
       @car.weeding_friday, @car.weeding_saturday]
    array_holiday_rent = [@car.holiday, @car.holiday_min_zakaz, @car.holiday_weeding_min_zakaz] 

    @hour_rent = Car.check_price(array_price_hour)
    @transfer = Car.check_price(array_transfer)
    @weeding_rent = Car.check_price(array_weeding_rent)
    @holiday_rent = Car.check_price(array_holiday_rent)
    
    @hash_price_hour = Hash[t('views.order.car_price_hour') => @car.price_hour, t('views.order.car_price_MKAD') => @car.price_MKAD, t('views.order.car_min_zakaz') => @car.min_zakaz]
    @hash_transfer = Hash[t('views.order.car_transfer_sheremetevo') => @car.transfer_sheremetevo, 
       t('views.order.car_transfer_vnukovo') => @car.transfer_vnukovo, t('views.order.car_transfer_domodedovo') => @car.transfer_domodedovo,
       t('views.order.car_transfer_ostafevo') => @car.transfer_ostafevo, t('views.order.car_transfer_bikovo') => @car.transfer_bikovo, 
       t('views.order.car_transfer_airport_airport') => @car.transfer_airport_airport, t('views.order.car_transfer_airport_station') => @car.transfer_airport_station,
       t('views.order.car_transfer_station_airport') => @car.transfer_station_airport]
    @hash_weeding_rent = Hash[t('views.order.car_weeding_price_hour') => @car.weeding_price_hour, t('views.order.car_weeding_price_MKAD') => @car.weeding_price_MKAD,
      t('views.order.car_weeding_min_zakaz') => @car.weeding_min_zakaz, t('views.order.car_weeding_friday') => @car.weeding_friday,
      t('views.order.car_weeding_saturday') => @car.weeding_saturday, t('views.order.car_weeding_decor') => @car.weeding_decor]
    @hash_holiday_rent = Hash[t('views.order.car_holiday') => @car.holiday, t('views.order.car_holiday_min_zakaz') => @car.holiday_min_zakaz,
      t('views.order.car_holiday_weeding_min_zakaz') => @car.holiday_weeding_min_zakaz]

  end
end
