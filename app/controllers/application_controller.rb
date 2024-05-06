class ApplicationController < ActionController::Base

  before_action :authenticate_utilisateur!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:prenom])

    devise_parameter_sanitizer.permit(:account_update, keys: [:prenom])
 end

end
