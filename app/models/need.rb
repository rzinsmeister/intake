class Need < ActiveRecord::Base
  attr_accessible :item
  
	has_many :entrants, :through => :entrants_needs
	has_many :entrants_needs
  
end
