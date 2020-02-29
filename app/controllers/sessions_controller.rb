class SessionsController < ApplicationController
  def new
  end

  def create 
    session[:name] = params[:name]

    if !params[:name] || params[:name].empty?
      return redirect_to(controller: 'sessions', action: 'new') 
    else 
      redirect_to controller: 'application', action: 'hello'
    end
  end

  def destroy
    session.delete :name
  end

end
