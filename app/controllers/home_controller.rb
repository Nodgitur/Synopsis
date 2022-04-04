require 'weather-synopsis'

class HomeController < ApplicationController

  #Dublin,IE
  # #{@city},#{@country}

  def index
    if Rails.env.production?
      #Geocoder gem only works in production environment database
      @country = request.location.country_code
      @city = request.location.city
      # Calling temperature from home_controller
      @temp = Weather.instance.earth_data(city: "Dublin",
                                          country_code: "IE",
                                          api_key: "4b1d1de8d743ff0d538d643cf0cbc850")
    else
      @country = "Location not found"
      @city = "please ensure that this is production environment"
      @temp = "unknown in "
    end
  end
end