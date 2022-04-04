require 'Weather-Synopsis'
require 'news.rb'

class HomeController < ApplicationController
  def index
    if Rails.env.production?
      # Geocoder gem only works in production environment database
      @country = request.location.country_code
      @city = request.location.city
      # Calling temperature from home_controller using custom weather gem
      @temp = Weather.instance.earth_data(city: @city,
                                          country_code: @country,
                                          api_key: "4b1d1de8d743ff0d538d643cf0cbc850")

      # Creating instance of adaptee
      adaptee = Adaptee.new

      # Calling json_method
      adaptee.json_method

      # Calls the adapter class with the adaptee as the json source
      adapter = Adapter.new(adaptee)

      # Calling the news_print method, with the json data from the the New York Times
      @news = news_print(adapter)

    else
      @country = "Location not found"
      @city = "please ensure that this is production environment"
      @temp = "unknown in "

      adaptee = Adaptee.new

      adaptee.json_method

      adapter = Adapter.new(adaptee)

      @news = news_print(adapter)
    end
  end
end
