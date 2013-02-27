class SessionsController < ApplicationController
  def create
    user = User.authenticate(params[:username],params[:password])
    if user
      session[:user_id] = user.id
      session[:username] = user.username
    flash[:notice] = "Welcome back!"
    redirect_to root_url
    else 
      flash[:notice] = "Username or password is incorrect"
      redirect_to new_session_url
    end
  end

  def new
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_url, :notice => "Come back soon!"  
  end
end