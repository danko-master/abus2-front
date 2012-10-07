class Domain < ActiveRecord::Base
    has_many :cars_domains
    has_many :cars, :through => :cars_domains
    
    #attr_accessible :name
end