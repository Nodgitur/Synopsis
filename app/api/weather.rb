require 'singleton'

class Weather
  include Singleton
  location = "https://api.openweathermap.org/data/2.5/weather?q=#{@city},#{@country}&appid=4b1d1de8d743ff0d538d643cf0cbc850"
  puts location
end
