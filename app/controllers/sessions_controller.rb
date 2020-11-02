class SessionsController < ApplicationController
    skip_before_action :redirect_if_not_logged_in
    
    def index 
    end 

    def new
    end 

    def create 
        @user = User.find_by(username: params[:user][:username])
        
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else 
            flash[:message] = "Sorry, that username and/or password is invalid. Please try again."
            redirect_to login_path
        end 
    end

    def google
        @user = User.from_google(auth)
        @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end 

    def destroy
        session.clear
        redirect_to root_path
    end 

    private
    def auth 
        request.env['omniauth.auth']
    end 
end
