class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do
      |x| x.permit(:handleSlack, :email, :password, :password_confirmation, :remember_me)
    end
    devise_parameter_sanitizer.permit(:account_update) do
      |x| x.permit(:handleSlack, :bio, :email, :password, :password_confirmation, :current_password) 
    end
  end

end
