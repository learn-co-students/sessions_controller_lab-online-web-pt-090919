class SessionsController < ApplicationController
  def new
  end

  def create
    # sets session[:name] if :name was given
    # redirects to "/" if logged in
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to :root
    else
      # redirects to the login page if :name is nil
      # redirects to login page if :name is empty
      redirect_to :login
    end
  end

  def destroy
    # leaves session[:name] nil if it was not set
    # clears session[:name] if it was set
    session.delete :name if session[:name]
    redirect_to :login  
  end
end