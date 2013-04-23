class ReportsController < ApplicationController

  before_filter :check_authentication
  def check_authentication
    if not session[:user_id]
      redirect_to new_session_url
    end
  end


  # GET /reports
  # GET /reports.json
  def index  
  end


  def entrantbyage
    @entrants = Entrant.paginate(:page => params[:page], :per_page =>10)

  
    @entrantbyage = params[:search]

    @entrant = Entrant.where('lower(grade) = ?', "#{@entrantbyage.downcase}")
      if @entrant.length > 0
        @results = @entrant
      else 
        flash[:notice] = "Grade not found, please check your entry"
        redirect_to reports_url

      end
  end
  
  def entrantbyschool 
    @entrantbyschool = params[:search]
    
    @schools = School.where('lower(schoolname) LIKE ?',"%#{@entrantbyschool.downcase}%")
    
    if @schools.length == 1 
    	@results = Entrant.where('mpsschool_id =?', @schools[0].id)
    
    else if @schools.length > 1
  		flash[:notice1] = "Too many schools, please check the name"
  		redirect_to reports_url
  	
  	else 
  		flash[:notice1] = "School not found, please check your entry"
  		redirect_to reports_url
  	end
  end      
  end

	def entrantbyshelter
	  @entrantbyshelter = params[:search]

		@shelters = Shelter.where('lower(sheltername) LIKE?', "%#{@entrantbyshelter.downcase}%")
		
		if @shelters.length == 1
    	@results = Entrant.where('shelterid =?', @shelters[0].id)
    else if @shelters.length > 1
  		flash[:notice2] = "Too many shelters, please check the name"
  		redirect_to reports_url
  	else 
  		flash[:notice2] = "Shelter not found, please check your entry"
  		redirect_to reports_url
  	end
  end   
	end


end
