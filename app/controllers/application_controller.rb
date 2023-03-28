class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  add_flash_types :info, :error, :warning
  protected

  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:roles])
  end
end
