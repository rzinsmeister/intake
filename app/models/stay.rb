class Stay < ActiveRecord::Base
  attr_accessible :entrant_id, :shelter_id, :entrydate, :exitdate, :totaldays
  
  belongs_to :entrant

  
end
