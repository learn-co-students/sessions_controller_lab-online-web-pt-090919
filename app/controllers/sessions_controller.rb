class SessionsController < ApplicationController
  
  def new
    #binding.pry
  end

  def create
    if !params[:name]
      redirect_to sessions_new_path
    elsif params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.destroy if session[:name]
  end

  def sesh
    session
  end

  def logged_in

  end

end
