class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end

    def create
        if params[:name].present?
            session[:name] = params[:name]
            redirect_to :root
        else
            redirect_to :login
        end
    end

    def destroy
        session.delete :name
      end
end