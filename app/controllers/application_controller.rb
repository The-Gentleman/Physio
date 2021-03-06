class ApplicationController < ActionController::Base
  before_action :redirect_if_not_logged_in  
  helper_method :current_user, :logged_in?
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  # rescue_from NoMethodError, with: :record_not_found
  
  private
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  def logged_in?
    !!current_user
  end
  
  def redirect_if_not_logged_in 
    redirect_to login_path if !logged_in?
  end 

  def record_not_found
    redirect_to select_path
  end
end
