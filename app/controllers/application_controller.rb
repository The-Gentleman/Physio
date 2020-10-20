class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?, :current_users_office
  
    private
    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
  
    def logged_in?
      !!current_user
    end

    def current_users_office
      if current_user.offices.empty? || current_user.offices == nil?
        id = rand(1..5)
        office = Office.find(id)
        current_user.offices 
      end 
    end 
    
  end
