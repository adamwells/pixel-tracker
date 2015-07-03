class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :generate_snippet

  def generate_snippet(pixel)
  	"<img src=\"#{request.base_url}/trackers/#{pixel.tracking_string}\" width=\"1\" height=\"1\">"
  end
end
