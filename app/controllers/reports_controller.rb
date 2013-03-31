class ReportsController < ApplicationController


  # GET /reports
  # GET /reports.json
  def index  
  end


  def entrantbyage
    @entrantbyage = params[:search]

    @entrant = Entrant.where('grade = ?', "#{@entrantbyage}")
      if @entrant.length > 0
        @results = @entrant
      else 
        flash[:notice] = "Grade not found, please check your entry"
        redirect_to reports_url

      end
  end
  
  def entrantbyschool 
    @entrantbyschool = params[:search]
    
    @schools = School.where('schoolname LIKE ?',"%#{@entrantbyschool}%")
    
    if @schools.length == 1 
    	@results = Entrant.where('mpsschool =?', @schools[0].id)
    
    else if @schools.length > 1
  		flash[:notice1] = "Too many schools, please check the name"
  		redirect_to reports_url
  	
  	else 
  		flash[:notice1] = "School not found, please check your entry"
  		redirect_to reports_url
  	end
  end

      
	
  end

end
