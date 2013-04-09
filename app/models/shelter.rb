class Shelter < ActiveRecord::Base
  attr_accessible :city, :phone, :sheltername, :state, :street, :zip
  
  has_many :entrants
  
  
  def self.search(search)
    if search
      where('lower(sheltername) like ?', "%#{search.downcase}%")
    else
      scoped
    end
  end
  
  
end
