class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in_using_omniauth?

  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :success
  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :user_name, :avatar) }

   devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :current_password, :user_name, :avatar) }
  end


 
  private
 
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


  def logged_in_using_omniauth?
  res = nil
  omniauth = request.env["omniauth.auth"]
  res = Authentication.find_by_provider_and_uid   
  (omniauth['provider'], omniauth['uid']) if omniauth
  res  
end

end

 