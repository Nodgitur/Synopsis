class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # This will force the user to sign in before accessing the rest of the webpage
  before_action :authenticate_user!
end