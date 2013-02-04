class School < ActiveRecord::Base
  attr_accessible :city, :officephone, :schoolname, :sswname, :sswphone, :state, :street, :zip
  
  has_many :students
end
