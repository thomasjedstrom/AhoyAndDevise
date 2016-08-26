class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

	after_filter :ahoy_track

  use_vanity

  add_flash_types :test_success

  protected

  def ahoy_track
    ahoy.track_visit
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :password, :password_confirmation, :remember_me])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :name, :password, :password_confirmation, :remember_me])
  end
end
