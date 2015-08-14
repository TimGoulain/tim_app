# encoding: utf-8
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def hello
    render text: "www.monpvtaustralien.com  : l'application indispensable pour les Pvtistes en Australie!"
  end

  def goodbye
    render text: "www.monpvtaustralien.com : l'application indispensable pour les Pvtistes en Australie!"
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

end
