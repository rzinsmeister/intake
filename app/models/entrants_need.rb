class EntrantsNeed < ActiveRecord::Base
  attr_accessible :need_id, :entrant_id 
  
  belongs_to :entrant
  belongs_to :need

  
end
