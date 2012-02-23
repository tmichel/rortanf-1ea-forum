class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method [:current_user, :logged_in?]
  
  protected
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def login_required
    if !logged_in?
      redirect_to login_path, :notice => "Elobb be kell jelentkezned!"
    end
  end
  
end
