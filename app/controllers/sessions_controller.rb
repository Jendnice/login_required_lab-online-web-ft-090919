class SessionsController < ApplicationController 

    def new 
    end 

    def create 
        if params[:name] && params[:name] != ""
            session[:name] = params[:name]
            redirect_to '/welcome'
        else 
            redirect_to '/'
        end 
    end 

    def destroy 
        session.delete :name 
        redirect_to '/login'
    end 

end 
