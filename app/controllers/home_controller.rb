require_relative '../../app/api/weather.rb'

class HomeController < ApplicationController
  def index
    if Rails.env.production?
      #Geocoder gem only works in production environment database
      @country = request.location.country_code
      @city = request.location.city
      # Calling temperature form home_controller
      @temp = Weather.instance.earth_data

    else
      @country = "Location not found"
      @city = "please ensure that this is production environment"
      @temp = "The temperature was also not found for your location"
    end
  end
end