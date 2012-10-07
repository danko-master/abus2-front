class Image < ActiveRecord::Base
  belongs_to :car,
   :foreign_key => "car_id"
   
   has_attached_file :image, :styles => { :small => "110x110>" }
   
end