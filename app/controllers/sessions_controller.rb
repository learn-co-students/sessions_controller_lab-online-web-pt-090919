class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to "/login"
    else
    redirect_to "/"
    render :new
  end
  end

  def destroy
    session.destroy :name if !session[:name].nil?
  end
end

