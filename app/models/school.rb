class School < ActiveRecord::Base
  attr_accessible :city, :officephone, :schoolname, :sswname, :sswphone, :state, :street, :zip
  
  has_many :students
  
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
end
