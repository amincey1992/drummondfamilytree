class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
include PublicActivity::StoreController
# ...
hide_action :current_users
  protect_from_forgery with: :exception
 before_action :authenticate_user!

    helper_method :current_user

  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :success
  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :user_name, :avatar) }

   devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :current_password, :user_name, :avatar) }
  end



def current_users
    @current_users ||= User.find(session[:user_id]) if session[:user_id]
  end


 
  # private
 
  
end

 