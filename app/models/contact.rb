class Contact < ActiveRecord::Base
  attr_accessible :city, :phone, :pnamef, :pnamel, :state, :street, :zip, :entrants_attributes
    
  has_many :entrants
  
  accepts_nested_attributes_for :entrants

  def self.search(search)
    if search
      where('pnamef ILIKE ?', "%#{search}%")
    else
      scoped
    end
  end


end
