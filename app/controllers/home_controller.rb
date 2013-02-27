class HomeController < ApplicationController

 
  before_filter :check_authentication
  def check_authentication
    if not session[:user_id]
      redirect_to new_session_url
    end
  end


  def index
  
  end

end