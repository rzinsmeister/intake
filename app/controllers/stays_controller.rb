class StaysController < ApplicationController

  before_filter :check_authentication
  def check_authentication
    if not session[:user_id]
      redirect_to new_session_url
    end
  end


# GET /stays
  # GET /stays.json
  	def index

    end
  end

  # GET /stays/1
  # GET /stays/1.json
  def show

  end

  # GET /stays/new
  # GET /stays/new.json
  def new
    @stay = Stay.new
		@contact = Contact.new
		@entrant = Entrant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stay }
    end
  end

  # GET /stays/1/edit
  def edit


  end

  # POST /stays
  # POST /stays.json
  def create
    @stay = Stay.new(params[:stay])
    @contact = Contact.new
    @entrant = Entrant.new

    respond_to do |format|
      if @stay.save
        format.html { redirect_to @stay, notice: 'Entrant was successfully created.' }
        format.json { render json: @stay, status: :created, location: @stay }
      else
        format.html { render action: "new" }
        format.json { render json: @stay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stays/1
  # PUT /stays/1.json
  def update
    @stay = Stay.find(params[:id])

    respond_to do |format|
      if @stay.update_attributes(params[:stay])
        format.html { redirect_to @entrant, notice: 'Stay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stays/1
  # DELETE /stays/1.json
  def destroy
    @stay = Stay.find(params[:id])
    @stay.destroy

    respond_to do |format|
      format.html { redirect_to stays_url }
      format.json { head :no_content }
    end
  end


end
