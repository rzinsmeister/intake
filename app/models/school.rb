class School < ActiveRecord::Base
  attr_accessible :city, :officephone, :schoolname, :sswname, :sswphone, :state, :street, :zip
  
  has_many :entrants
  
  def self.search(search)
    if search
      where('schoolname ILIKE ?', "%#{search}%")

    else
      scoped
    end
  end
  
end
