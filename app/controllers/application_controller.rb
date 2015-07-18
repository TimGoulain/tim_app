class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def hello
  render text: "www.monpvtaustralien.com  : l'application indispensable pour les Pvtistes en Australie!"
  end
  
  def goodbye
  render text: "www.monpvtaustralien.com : l'application indispensable pour les Pvtistes en Australie!"
  end
  
end
