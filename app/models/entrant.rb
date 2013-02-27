class Entrant < ActiveRecord::Base
  attr_accessible :cnamef, :cnamel, :contact_id, :dob, :entrydate, :exitdate, :grade, :lastschool, :mnres, :mpsschool, :nonmpsschool, :note, :shelterid, :shelterschool, :totaldays

  belongs_to :school
  belongs_to :shelter
  belongs_to :contact



end
