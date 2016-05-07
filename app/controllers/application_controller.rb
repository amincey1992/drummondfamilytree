class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :weather
  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :user_name, :avatar) }

   devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :current_password, :user_name, :avatar) }
  


  end

  # def weather 
  # 	response = HTTParty.get("http://api.wunderground.com/api/#{ENV['wunderground_api_key']}/geolookup/conditions/q/GA/Atlanta.json")
  
  # @location = response['location'] ? response['location']['city'] : nil
  # @temp_f = response['current_observation'] ? ['temp_f'] : nil
  # @weather_icon = response['current_observation'] ? ['icon_url'] : nil
  # end
end

 