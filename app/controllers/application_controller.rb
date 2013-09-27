class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected
  	def configure_permitted_parameters
  		devise_parameter_sanitizer.for(:sign_up) << :name
		devise_parameter_sanitizer.for(:account_update) << :name
	end

	def authenticate_admin_user!
		redirect_to(new_user_session_path) unless current_user.try(:admin?)
		authenticate_user!
	end

	def current_admin_user
		return nil unless current_user.try(:admin?)
	end
  				
end
