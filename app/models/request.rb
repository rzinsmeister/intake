class Request < ActiveRecord::Base
  attr_accessible :email, :name, :position, :reason
end