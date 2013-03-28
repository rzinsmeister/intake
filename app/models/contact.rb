class Contact < ActiveRecord::Base
  attr_accessible :city, :entrydate, :exitdate, :phone, :pnamef, :pnamel, :state, :street, :zip, :entrants_attributes
    
  has_many :entrants
  accepts_nested_attributes_for :entrants
  
end
