class ApplicationController < ActionController::Base
  #
  # before_action :configure_permitted_parameters, if: :devise_controller?
  #
  # protected
  #
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up).push(:name, :email)
  #   devise_parameter_sanitizer.for(:account_update).push(:name, :email)
  # end

  include SessionsHelper

  private
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
