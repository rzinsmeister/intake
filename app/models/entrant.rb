class Entrant < ActiveRecord::Base
  attr_accessible :cnamef, :cnamel, :contact_id, :dob, :entrydate, :exitdate, :grade, :lastschool, :mnres, :mpsschool, :nonmpsschool, :note, :shelterid, :shelterschool, :totaldays

  belongs_to :school
  belongs_to :shelter
  belongs_to :contact

  def self.search(search)
    if search
      where('cnamef LIKE ?', "%#{search}%")
    else
      scoped
    end
  end

end
