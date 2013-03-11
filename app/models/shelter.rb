class Shelter < ActiveRecord::Base
  attr_accessible :city, :phone, :sheltername, :state, :street, :zip
  
  has_many :entrants
end
