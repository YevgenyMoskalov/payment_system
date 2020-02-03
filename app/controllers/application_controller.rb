class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # rescue_from CanCan::AccessDenied do
  #   redirect_to '/403.html'
  # end

  rescue_from ActiveRecord::RecordNotFound do
    redirect_to '/404.html'
  end

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up) do |client|
    #   client.permit(client_attr_attributes: %i[first_name last_name gender birthday])
    # end
    devise_parameter_sanitizer.permit(:sign_up, keys: [client_attr_attributes: %i[first_name last_name gender birthday]])
  end

end
