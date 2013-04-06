class Entrant < ActiveRecord::Base
  attr_accessible :cnamef, :cnamel, :contact_id, :dob, :grade, :lastschool, :mnres, :mpsschool, :nonmpsschool, :note, :shelterid, :shelterschool, :studentid, :bus, :lastcity, :laststate, :discovery, :transport, :language, :stays_attributes, :entrants_needs_attributes, :needs_attributes, :needs

  has_many :stays
  has_many :needs, :through => :entrants_needs
  has_many :entrants_needs
  
  accepts_nested_attributes_for :stays
  accepts_nested_attributes_for :entrants_needs


  belongs_to :school
  belongs_to :lastschool, :foreign_key => "lastschool", :class_name => "School"
  belongs_to :mpsschool, :foreign_key => "mpsschool", :class_name => "School"
  belongs_to :shelter, :foreign_key => "shelterid", :class_name => "Shelter"
  belongs_to :contact


def days_between(entrydate, exitdate)


end

  def self.search(search)
    
    if search
    	if search.to_i == 0
				Entrant.joins(:contact).where('contacts.pnamef LIKE ? OR contacts.pnamel LIKE ? OR cnamef LIKE ? OR cnamel LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")    
			elsif search.to_i != 0 
				Entrant.where('studentid = ?', search.to_i)
			end
		else
      scoped
    end
  end

end
