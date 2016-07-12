class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
 before_action :authenticate_user!

    helper_method :current_user

  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :success
  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :user_name, :avatar) }

   devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :current_password, :user_name, :avatar) }
  end

 def is_admin?
    signed_in? ? current_user.admin : false
  end
end
 
  # private
 
  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end

end

 