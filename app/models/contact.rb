class Contact < ActiveRecord::Base
  attr_accessible :city, :entrydate, :exitdate, :phone, :pnamef, :pnamel, :state, :street, :zip
  
  has_many :entrants
end
