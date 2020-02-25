class SessionsController < ApplicationController

    def new
    end

    def create
        if session[:name]
            redirect_to controller: 'application', action: 'hello'
        elsif params[:name].blank? || params[:name].nil?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to controller: 'application', action: 'hello'
        end
    end

    def destroy
        session.delete :name 
        redirect_to controller: 'application', action: 'hello'
    end
end
