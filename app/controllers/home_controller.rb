class HomeController < ApplicationController
  def index
    #Geocoder gem only works in production environment database
    if Rails.env.production?
      @country = request.location.country
      @city = request.location.city
    else
      @country = "Location not found"
      @city = "please ensure this is production environment"
    end
  end
end