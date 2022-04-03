require 'singleton'
require 'open-uri'
require 'json'
require 'net/http'
require 'httparty'
require 'rubygems'

class Weather
  include Singleton
  include HTTParty

  attr_accessor :temp

  def earth_data
    p = self.class.get("https://api.openweathermap.org/data/2.5/weather?q=#{@city},#{@country}&appid=4b1d1de8d743ff0d538d643cf0cbc850")

    # Getting an array of the first level keys from the json object
    array = p.keys

    # Printing the array
    array

    # Moving two levels deep into the json file, to get the temperature of our city
    temperature = p['main']['temp']

    # Converting the value from kelvin to celsius
    celsius = temperature - 273.15

    # Rounding the value off to give a whole number
    celsius.round(0)
  end
end

# weather = Weather.instance
# weather.earth_data
# puts weather.temp