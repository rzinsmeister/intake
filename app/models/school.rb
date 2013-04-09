class School < ActiveRecord::Base
  attr_accessible :city, :officephone, :schoolname, :sswname, :sswphone, :state, :street, :zip
  
  has_many :entrants
  
  def self.search(search)
    if search
      where('lower(schoolname) like ?', "%#{search.downcase}%")

    else
      scoped
    end
  end
  
end
