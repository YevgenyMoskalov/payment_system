class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def render_403
    render file: "public/403.html", status: 403
  end

  def render_404
    render file: "public/404.html", status: 404
  end

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up) do |client|
    #   client.permit(client_attr_attributes: %i[first_name last_name gender birthday])
    # end
    devise_parameter_sanitizer.permit(:sign_up, keys: [client_attr_attributes: %i[first_name last_name gender birthday]])
  end

end
