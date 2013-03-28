class Entrant < ActiveRecord::Base
  attr_accessible :cnamef, :cnamel, :contact_id, :dob, :entrydate, :exitdate, :grade, :lastschool, :mnres, :mpsschool, :nonmpsschool, :note, :shelterid, :shelterschool, :totaldays, :studentid, :bus, :lastcity, :laststate, :needs, :discovery, :transport

  belongs_to :school
  belongs_to :lastschool, :foreign_key => "lastschool", :class_name => "School"
  belongs_to :shelter, :foreign_key => "shelterid", :class_name => "Shelter"
  belongs_to :contact


def days_between(entrydate, exitdate)


end

  def self.search(search)
    if search
      where('cnamef LIKE ?', "%#{search}%")
    else
      scoped
    end
  end

end
